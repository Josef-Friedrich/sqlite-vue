import { defineStore } from 'pinia'

import type { TableData, ResultData, RowData, DatabaseSchema } from '@/sql'
import { query } from '@/sql'
import { editor } from '@/editor'

interface State {
  lastImport: number | null
  tables: { [name: string]: TableData }
  databaseSchema: DatabaseSchema | null
  result: ResultData | null
  errorMsg: string | null
}

export const getStore = defineStore('table', {
  state: (): State => {
    return {
      lastImport: null,
      tables: {},
      databaseSchema: null,
      result: null,
      errorMsg: null
    }
  },
  getters: {
    table: state => {
      return (name: string) => state.tables[name]
    },
    hasDatabase: (state): boolean => {
      return Object.keys(state.tables).length > 0
    }
  },
  actions: {
    add (name: string, columns: string[], rows: RowData[]) {
      this.tables[name] = {
        name,
        columns,
        rows,
        allRowsCount: rows.length
      }
    },
    setLastImportTimestamp () {
      console.log(new Date().getTime())
      this.lastImport = new Date().getTime()
    },
    setResult (result: ResultData) {
      this.errorMsg = null
      this.result = result
    },
    setError (msg: string) {
      this.errorMsg = msg
      this.result = null
    },
    updateDatabaseSchema () {
      this.databaseSchema = query.databaseSchema
    },
    async openDatabaseByUrl (url: string): Promise<void> {
      await query.fetchDump(url)
      this.result = null
      this.updateDatabaseSchema()
      editor?.setValue('')
    },
    async openDatabaseByRelPath (relPath: string): Promise<void> {
      await this.openDatabaseByUrl(
        `https://raw.githubusercontent.com/bschlangaul-sammlung/datenbanken/main/${relPath}.sql`
      )
    }
  }
})
