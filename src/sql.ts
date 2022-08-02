import initSqlJs, { type Database } from 'sql.js'
import { getStore } from '@/store'
import type { Row, Cell } from '@/store'

async function fetchDumpFile (url: string): Promise<string> {
  return await (await fetch(url)).text()
}

const SQL = await initSqlJs({
  // Required to load the wasm binary asynchronously. Of course, you can host it wherever you want
  // You can omit locateFile completely when running in node
  // `node_modules/sql.js/dist/${file}`
  // `https://sql.js.org/dist/${file}`
  locateFile: file => `https://sql.js.org/dist/${file}`
})

let db = new SQL.Database()

export function execSql (sql: string) {
  const store = getStore()
  try {
    const result = db.exec(sql)[0]
    store.setResult(result.columns, result.values)
  } catch (e) {
    const error: Error = e as Error
    store.setError(error.message)
  }
}

function importTable (name: string) {
  const store = getStore()

  const statement = db.prepare('SELECT * FROM ' + name)

  const columns = statement.getColumnNames()

  const rows: Row[] = []
  while (statement.step()) {
    rows.push(statement.get())
  }
  store.add(name, columns, rows)
}

function importAllTables () {
  const result = db.exec(
    'SELECT name from sqlite_schema WHERE type = "table" AND name NOT LIKE "sqlite_%"'
  )
  for (const name of result[0].values) {
    importTable(name[0] as string)
  }
}

class DatabaseQuery {
  db: Database

  constructor() {
    this.db = new SQL.Database()
  }

  async fetchDump(url: string) {
    this.db.close()
    this.db = new SQL.Database()
    this.db.run(await fetchDumpFile(url))
    const store = getStore()
    store.setLastImportTimestamp()
  }

  get tableNames(): string[] {
    const names: string[] = []
    const results = this.db.exec(
      'SELECT name FROM sqlite_schema WHERE type = "table" AND name NOT LIKE "sqlite_%"'
    )
    for (const result of results) {
      for (const name of result.values) {
        names.push(name[0] as string)
      }
    }
    return names
  }

  getColumnsByTable(tableName: string): ColumnSchema[] {
    const statement = this.db.prepare(
      `PRAGMA TABLE_INFO('${tableName}')`
    )
    const columns: ColumnSchema[] = []
    while (statement.step()) {
      columns.push(new ColumnSchema(statement.getAsObject()))
    }
    return columns
  }

  get databaseSchema (): DatabaseSchema {
    const tables: TableSchema[] = []
    for (const tableName of this.tableNames) {
      const table = {
        name: tableName,
        columns: this.getColumnsByTable(tableName)
      }
      tables.push(table)
    }
    return {tables}
  }
}

interface DatabaseSchema {
  tables: TableSchema[]
}

interface TableSchema {
  name: string
  columns: ColumnSchema[]
}

class ColumnSchema {
  name: string
  dataType: string
  notNull: boolean
  defaultValue: any
  primaryKey: boolean

  constructor(result: Record<string, Cell>) {
    this.name = String(result.name)
    this.dataType = String(result.type)
    this.notNull = result.notnull == 1
    this.defaultValue = result.dflt_value
    this.primaryKey = result.pk == 1
  }
}

export let query: DatabaseQuery = new DatabaseQuery()
