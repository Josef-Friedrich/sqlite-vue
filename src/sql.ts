import initSqlJs, { Database } from 'sql.js'

class ColumnSchema {
  name: string
  dataType: string
  notNull: boolean
  defaultValue: any
  primaryKey: boolean

  constructor (result: Record<string, CellData>) {
    this.name = String(result.name)
    this.dataType = String(result.type)
    this.notNull = result.notnull == 1
    this.defaultValue = result.dflt_value
    this.primaryKey = result.pk == 1
  }
}

interface TableSchema {
  name: string
  columns: ColumnSchema[]
}

export interface DatabaseSchema {
  tables: TableSchema[]
}

export type CellData = string | number | boolean | null | Uint8Array

export type RowData = CellData[]

export interface ResultData {
  columns: string[]
  rows: RowData[]
  allRowsCount: number
}

export interface TableData extends ResultData {
  name: string
}

async function fetchDumpFile (url: string): Promise<string> {
  const response = await fetch(url)
  return response.text()
}

const SQL = await initSqlJs({
  // Required to load the wasm binary asynchronously. Of course, you can host it wherever you want
  // You can omit locateFile completely when running in node
  // `node_modules/sql.js/dist/${file}`
  // `https://sql.js.org/dist/${file}`
  locateFile: file => `https://sql.js.org/dist/${file}`
})

class DatabaseQuery {
  db: Database

  constructor () {
    this.db = new SQL.Database()
  }

  async fetchDump (url: string) {
    this.db.close()
    this.db = new SQL.Database()
    this.db.run(await fetchDumpFile(url))
  }

  public exec (sql: string, columnsToStore: number = 50): ResultData {
    const statement = this.db.prepare(sql)
    const columns = statement.getColumnNames()
    const rows: RowData[] = []
    let counter = 0
    while (statement.step()) {
      if (counter < columnsToStore) {
        rows.push(statement.get())
      }
      counter++
    }
    return { columns, rows, allRowsCount: counter }
  }

  public get tableNames (): string[] {
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

  private getColumnsByTable (tableName: string): ColumnSchema[] {
    const statement = this.db.prepare(`PRAGMA TABLE_INFO('${tableName}')`)
    const columns: ColumnSchema[] = []
    while (statement.step()) {
      columns.push(new ColumnSchema(statement.getAsObject()))
    }
    return columns
  }

  public get databaseSchema (): DatabaseSchema {
    const tables: TableSchema[] = []
    for (const tableName of this.tableNames) {
      const table = {
        name: tableName,
        columns: this.getColumnsByTable(tableName)
      }
      tables.push(table)
    }
    return { tables }
  }
}

export let query: DatabaseQuery = new DatabaseQuery()
