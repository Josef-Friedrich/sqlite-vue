<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'

import { useTableStore } from '@/stores/table'

const store = useTableStore()
</script>

<template>
  <main>
    <h1>Database scheme</h1>
    <result-table
      v-for="table in store.tables"
      :table="table"
      :key="table.name"
    ></result-table>
  </main>
</template>
