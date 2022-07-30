<script lang="ts">
import ResultTable from '@/components/ResultTable.vue'

export default {
  components: {
    ResultTable
  }
}
</script>

<template>
  <main>
    Home

    <result-table tableName="Test" :rows="[['a', 'b'], ['c', 'd']]"></result-table>
  </main>
</template>
