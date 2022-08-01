openDb<script setup lang="ts">
import { ref } from 'vue'
import { openDb } from '@/sql'
let url = ref<string>()

function onClick () {
  if (url.value != null) {
    openDb(url.value)
  }
}
</script>

<template>
  <div>
    <label for="url">URL:</label>
    <input type="text" name="url" v-model="url" />
    <button @click="onClick">Import</button>
  </div>
</template>
