<script setup lang="ts">
import { getStore } from '@/store'
const store = getStore()
</script>

<template>
  <section v-if="store.databaseSchema">
    Database schema:

    <p v-for="(table, index) in store.databaseSchema.tables" :key="index">
      <strong>{{ table.name }}</strong>
      (<span v-for="(column, index) in table.columns" :key="index"
        >{{ column.name }}, </span
      >)
    </p>
  </section>
</template>
