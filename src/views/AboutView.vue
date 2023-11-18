<script setup lang="ts">
// const v = VERSION

import { version as vueVersion, onMounted, ref } from 'vue'

const monacoVersion = __VERSION_MONACO__

import { query } from '../sql.js'

let sqliteVersion = ref<string>()
onMounted(() => {
  sqliteVersion.value = query.getSqliteVersion()
})
</script>

<template>
  <div class="about">
    SQLama

    <img src="../assets/logo.png" />

    <ul>
      <li v-if="sqliteVersion != null">
        <a href="https://www.sqlite.org">SQLite {{ sqliteVersion }}</a>
      </li>

      <li><a href="https://sql.js.org">sql.js</a></li>

      <li>
        <a href="https://vuejs.org">vue {{ vueVersion }}</a>
      </li>

      <li>
        <a href="https://microsoft.github.io/monaco-editor/"
          >monaco-editor {{ monacoVersion }}</a
        >
      </li>
    </ul>
  </div>
</template>
