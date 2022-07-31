import { defineStore } from 'pinia'

type Cell = string | number | boolean

type Row = Cell[]

export interface Table {
  name: string
  columns: string[]
  rows: Row[]
}

interface State {
  tables: { [name: string]: Table }
}

export const useTableStore = defineStore('table', {
  state: (): State => {
    return {
      tables: {}
    }
  },
  getters: {
    table: state => {
      return (name: string) => state.tables[name]
    }
  },
  actions: {
    add (name: string, columns: string[], rows: any[]) {
      this.tables[name] = {
        name,
        columns,
        rows
      }
    }
  }
})
