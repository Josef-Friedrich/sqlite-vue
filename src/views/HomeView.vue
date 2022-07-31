<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
import MonacoEditor from 'monaco-editor-vue3'
import { useTableStore } from '@/stores/table'
import { onMounted } from 'vue'
import { initializeDb, importAllTables } from '@/sql'

const store = useTableStore()

onMounted(async () => {
  await initializeDb(
    'https://raw.githubusercontent.com/bschlangaul-sammlung/datenbanken/main/buses.sql'
  )
  importAllTables()
})
</script>

<template>
  <main>
    Home

    <!-- https://microsoft.github.io/monaco-editor/api/interfaces/monaco.editor.IStandaloneEditorConstructionOptions.html -->
    <MonacoEditor
      class="editor"
      v-model="code"
      :options="{ fontSize: 40, lineNumbers: 'off' }"
      width="800"
      height="300"
      language="sql"
    />
    <result-table v-for="table in store.tables" :table="table"></result-table>
  </main>
</template>

<style>
.editor {
  width: 600px;
  height: 800px;
}
</style>
