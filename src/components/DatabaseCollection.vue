<script setup lang="ts">
import { getStore } from '@/store'

const store = getStore()

const dumpFiles = ['sqlzoo/buses', 'sqlzoo/euro2012', 'sqlzoo/movies', 'sqlzoo/nobel', 'sqlzoo/teachers', 'sqlzoo/world']
</script>

<template>
  <section>
    <button
      @click="store.openDatabaseByRelPath(dumpFile)"
      v-for="(dumpFile, index) in dumpFiles"
      :key="index"
    >
      {{ dumpFile }}
    </button>
  </section>
</template>
