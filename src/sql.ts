import initSqlJs, { type Database } from 'sql.js'
import { useTableStore } from '@/stores/table'
import type { Row } from '@/stores/table'

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
  const store = useTableStore()
  try {
    const result = db.exec(sql)[0]
    store.setResult(result.columns, result.values)
  } catch (e) {
    const error: Error = e as Error
    store.setError(error.message)
  }
}

function importTable (name: string) {
  const store = useTableStore()

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

export async function openDb (url: string) {
  const store = useTableStore()
  store.$reset()

  db = new SQL.Database()
  const dump = await fetchDumpFile(url)
  console.log(dump)
  db.run(dump)

  importAllTables()
}

class DatabaseQuery {
  db: Database

  constructor() {
    this.db = new SQL.Database()
  }

  async fetchDump(url: string) {
    this.db.close()
    this.db = new SQL.Database()
    db.run(await fetchDumpFile(url))
  }

}

export let query: DatabaseQuery = new DatabaseQuery()
