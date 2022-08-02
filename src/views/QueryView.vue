openDb
<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
// import MonacoEditor from 'monaco-editor-vue3'
import MonacoEditor from '@/components/MonacoEditor.vue'
import DatabaseScheme from '@/components/DatabaseScheme.vue'

import { getStore } from '@/store'
import { onMounted } from 'vue'
import { openDb, execSql } from '@/sql'
import type { editor } from 'monaco-editor'
import type * as Monaco from 'monaco-editor'

const store = getStore()

onMounted(async () => {
  if (!store.hasDatabase) {
    await openDb(
      'https://raw.githubusercontent.com/bschlangaul-sammlung/datenbanken/main/sqlzoo/world.sql'
    )
  }
})

function onEditorWillMount (editor: editor.ICodeEditor) {}

function onEditorDidMount (monaco: typeof Monaco) {}

function onValueChange (
  value: string,
  event: editor.IModelContentChangedEvent
) {
  execSql(value)
}
</script>

<template>
  <main>

    <MonacoEditor
      class="editor"
      @change="onValueChange"
      @editorDidMount="onEditorDidMount"
      @editorWillMount="onEditorWillMount"
    />

    <database-scheme/>

    <div v-if="store.errorMsg">{{ store.errorMsg }}</div>
    <result-table v-if="store.result" :table="store.result"/>
  </main>
</template>

<style>
.editor {
  width: 100%;
  height: 300px;
}
</style>
