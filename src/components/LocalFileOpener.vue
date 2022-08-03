<script setup lang="ts">
import { getStore } from '@/store'
const store = getStore()

function convertToBinArray (input: string) {
  var l = input.length,
    arr = new Uint8Array(l)
  for (var i = 0; i < l; i++) {
    arr[i] = input.charCodeAt(i)
  }
  return arr
}

async function readFile (event: Event) {
  const element = <HTMLInputElement>event!.target
  const file = element!.files![0]
  const reader = new FileReader()
  console.log(file)

  if (file.type === 'application/sql') {
    reader.readAsText(file, 'utf-8')
    reader.onload = readerEvent => {
      const content = readerEvent!.target!.result
      if (content != null && typeof content === 'string') {
        store.openDatabaseByDump(content)
      }
    }
  } else if (file.type === 'application/vnd.sqlite3') {
    reader.readAsText(file)
    reader.onload = readerEvent => {
      const content = readerEvent!.target!.result
      if (content != null && typeof content === 'string') {
        store.openDatabaseByBinaryDbFile(convertToBinArray(content))
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
