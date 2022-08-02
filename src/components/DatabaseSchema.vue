<script setup lang="ts">
import { getStore } from '@/store'
import type { ColumnSchema } from '@/sql'
const store = getStore()

function formatColumns (columns: ColumnSchema[]) {
  const output: string[] = []
  for (const column of columns) {
    let c
    if (column.primaryKey) {
      c = `<span class="primary-key">${column.name}</span>`
    } else {
      c = column.name
    }
    c += '[' + column.dataType.toUpperCase() + ']'
    output.push(c)
  }
  return ' (' + output.join(', ') + ')'
}
</script>

<template>
  <section v-if="store.databaseSchema" class="content" id="database-schema">
    <h2>Database schema</h2>

    <p v-for="(table, index) in store.databaseSchema.tables" :key="index">
      <strong>{{ table.name }}</strong>
      <span v-html="formatColumns(table.columns)"></span>
    </p>
  </section>
</template>

<style>
#database-schema .primary-key {
  text-decoration: underline;
}
</style>
