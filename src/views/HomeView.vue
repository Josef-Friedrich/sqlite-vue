<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
// import MonacoEditor from 'monaco-editor-vue3'
import MonacoEditor from '@/components/MonacoEditor.vue'
import { useTableStore } from '@/stores/table'
import { onMounted } from 'vue'
import { initializeDb, importAllTables, execSql } from '@/sql'
import type { editor } from 'monaco-editor'
import type * as Monaco from 'monaco-editor'

const store = useTableStore()

onMounted(async () => {
  await initializeDb(
    'https://raw.githubusercontent.com/bschlangaul-sammlung/datenbanken/main/buses.sql'
  )
  importAllTables()
})

function onEditorWillMount(editor: editor.ICodeEditor) {
}

function onEditorDidMount(monaco: typeof Monaco) {
}

function onValueChange (
  value: string,
  event: editor.IModelContentChangedEvent
) {
  execSql(value)
}
</script>

<template>
  <main>
    <!-- https://microsoft.github.io/monaco-editor/api/interfaces/monaco.editor.IStandaloneEditorConstructionOptions.html -->
    <MonacoEditor
      class="editor"
      :options="{ fontSize: 26, lineNumbers: 'off' }"
      width="800"
      height="300"
      language="sql"
      @change="onValueChange"
      @editorDidMount="onEditorDidMount"
      @editorWillMount="onEditorWillMount"
    />

    <div v-if="store.errorMsg">{{ store.errorMsg }}</div>
    <result-table v-if="store.result" :table="store.result"></result-table>
  </main>
</template>

<style>
.editor {
  width: 600px;
  height: 800px;
}
</style>
