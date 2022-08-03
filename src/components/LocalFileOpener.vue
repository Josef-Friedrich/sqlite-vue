<script setup lang="ts">
import { getStore } from '@/store'
const store = getStore()

async function readFile (event: Event) {
  const element = <HTMLInputElement>event!.target
  const file = element!.files![0]
  if (file.type === 'application/sql') {
    store.openDatabaseByDump(await file.text())
  } else if (file.type === 'application/vnd.sqlite3') {
    store.openDatabaseByBinaryDbFile(new Uint8Array(await file.arrayBuffer()))
  }
}
</script>

<template>
  <div>
    <label for="file">File:</label>
    <input type="file" name="file" @change="readFile" />
  </div>
</template>
