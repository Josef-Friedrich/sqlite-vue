<script setup lang="ts">
import { getStore } from '@/store'
const store = getStore()

async function readFile (event: Event) {
  const element = <HTMLInputElement>event!.target
  const file = element!.files![0]
  const reader = new FileReader()

  if (file.type === 'application/sql') {
    reader.readAsText(file, 'utf-8')
    reader.onload = readerEvent => {
      const content = readerEvent!.target!.result
      if (content != null && typeof content === 'string') {
        store.openDatabaseByDump(content)
      }
    }
  } else if (file.type === 'application/vnd.sqlite3') {
    reader.readAsArrayBuffer(file)
    reader.onload = readerEvent => {
      const content = readerEvent!.target!.result
      if (content != null && typeof content !== 'string') {
        store.openDatabaseByBinaryDbFile(new Uint8Array(content))
      }
    }
  }
}
</script>

<template>
  <div>
    <label for="file">File:</label>
    <input type="file" name="file" @change="readFile" />
  </div>
</template>
