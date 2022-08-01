<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'

import { useTableStore } from '@/stores/table'

const store = useTableStore()
</script>

<template>
  <main>
    <result-table
      v-for="table in store.tables"
      :table="table"
      :key="table.name"
    ></result-table>
  </main>
</template>
