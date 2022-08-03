<script lang="ts" setup>
import ResultTable from '@/components/ResultTable.vue'
import MonacoEditor from '@/components/MonacoEditor.vue'
import DatabaseSchema from '@/components/DatabaseSchema.vue'
import DatabaseCollection from '@/components/DatabaseCollection.vue'
import LocalFileOpener from '@/components/LocalFileOpener.vue'

import { getStore } from '@/store'
import { query } from '@/sql'
import type { editor } from 'monaco-editor'

const store = getStore()

function onValueChange (
  value: string,
  event: editor.IModelContentChangedEvent
) {
  try {
    const result = query.exec(value)
    store.setResult(result)
  } catch (e) {
    const error: Error = e as Error
    store.setError(error.message)
  }
}
</script>

<template>
  <main>
    <monaco-editor class="editor" @change="onValueChange" />

    <database-collection />

    <database-schema />

    <local-file-opener />

    <section v-if="store.errorMsg" class="message is-danger">
      <div class="message-body">{{ store.errorMsg }}</div>
    </section>
    <result-table v-if="store.result" :table="store.result" />
  </main>
</template>

<style>
.editor {
  width: 100%;
  height: 300px;
}
</style>
