import initSqlJs from 'sql.js'
import { useTableStore } from '@/stores/table'

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

export async function initializeDb (url: string) {
  db = new SQL.Database()
  const dump = await fetchDumpFile(url)
  db.run(dump)
}

export function importTable (name: string) {
  const store = useTableStore()
  const statement = db.prepare('SELECT * FROM ' + name)

  const columns = statement.getColumnNames()

  const rows = []
  while (statement.step()) {
    rows.push(statement.get())
  }
  store.add(name, columns, rows)
}

export function importAllTables () {
  const result = db.exec('SELECT name from sqlite_schema WHERE type ="table" AND name NOT LIKE "sqlite_%"')
  for (const name of result[0].values) {
    importTable(name[0] as string)
  }
}
