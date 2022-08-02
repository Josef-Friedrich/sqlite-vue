<script setup lang="ts">
import { openDb, query } from '@/sql'

function openByRelPath (relPath: string): void {
  const url = `https://raw.githubusercontent.com/bschlangaul-sammlung/datenbanken/main/${relPath}.sql`
  openDb(url)
  //query.fetchDump(url)
}

const dumpFiles = ['sqlzoo/buses', 'sqlzoo/euro2012', 'sqlzoo/movies', 'sqlzoo/nobel', 'sqlzoo/teachers', 'sqlzoo/world']
</script>

<template>
  <section>
    <button
      @click="openByRelPath(dumpFile)"
      v-for="(dumpFile, index) in dumpFiles"
      :key="index"
    >
      {{ dumpFile }}
    </button>
  </section>
</template>
