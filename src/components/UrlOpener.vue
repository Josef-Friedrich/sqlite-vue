<script setup lang="ts">
import { ref } from 'vue'
import { query } from '@/sql'
const url = ref<string>()

function onClick () {
  if (url.value != null) {
    query.fetchDump(url.value)
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
