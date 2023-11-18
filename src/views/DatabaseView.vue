<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
import UrlOpener from '@/components/UrlOpener.vue'
import DatabaseCollection from '@/components/DatabaseCollection.vue';
import { getStore } from '@/store'

const store = getStore()
</script>

<template>
  <main>
    <UrlOpener />
    <Database-Collection />
    <result-table
      v-for="table in store.tables"
      :table="table"
      :key="table.name"
    ></result-table>
  </main>
</template>
