<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
import UrlOpener from '@/components/UrlOpener.vue'
import DatabaseCollection from '@/components/DatabaseCollection.vue';
import { getStore } from '@/store'

const store = getStore()
</script>

<template>
  <main>
    <url-opener></url-opener>
    <database-collection></database-collection>
    <result-table
      v-for="table in store.tables"
      :table="table"
      :key="table.name"
    ></result-table>
  </main>
</template>
