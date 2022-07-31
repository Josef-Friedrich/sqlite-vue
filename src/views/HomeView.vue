<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
import { useTableStore } from '@/stores/table'
import { onMounted } from 'vue'
import { initializeDb, importAllTables } from '@/sql'

const store = useTableStore()

onMounted(async () => {
  await initializeDb(
    'https://raw.githubusercontent.com/bschlangaul-sammlung/datenbanken/main/mond.sql'
  )
  importAllTables()
})
</script>

<template>
  <main>
    Home

    <result-table v-for="table in store.tables" :table="table"></result-table>
  </main>
</template>
