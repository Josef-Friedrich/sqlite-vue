<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
import { useTableStore } from '@/stores/table'
import { onMounted } from 'vue'

const store = useTableStore()

onMounted(() => {
  store.add('test', ['a', 'b'], [[1, 2], [3, 4]])
  store.add('test', ['a', 'b'], [[1, 2], [3, 4]])
})
</script>

<template>
  <main>
    Home

    <result-table v-for="table in store.tables"
      :table="table"
    ></result-table>
  </main>
</template>
