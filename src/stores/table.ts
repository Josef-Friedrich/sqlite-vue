import { defineStore } from 'pinia'

export type Cell = string | number | boolean | null | Uint8Array

export type Row = Cell[]

export interface Table {
  name: string
  columns: string[]
  rows: Row[]
}

interface State {
  tables: { [name: string]: Table }
  result: Table | null
  errorMsg: string | null
}

export const useTableStore = defineStore('table', {
  state: (): State => {
    return {
      tables: {},
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
    add (name: string, columns: string[], rows: Row[]) {
      this.tables[name] = {
        name,
        columns,
        rows
      }
    },
    setResult (columns: string[], rows: Row[]) {
      this.errorMsg = null
      this.result = { name: 'Result', columns, rows }
    },
    setError (msg: string) {
      this.errorMsg = msg
      this.result = null
    }
  }
})
