<script setup lang="ts">
import { query } from '@/sql'
import { getStore } from '@/store'
import {computed} from 'vue'
const store = getStore()

store.$subscribe((mutation, state) => {
  console.log(mutation)
  if (mutation.type === 'direct' && mutation.events.key === 'lastImport') {
    console.log(query.databaseSchema)
  }
})

const scheme = computed(() => {
  return 'scheme'
})
</script>

<template>
  <section>
    Database scheme: {{ scheme }}
  </section>
</template>
