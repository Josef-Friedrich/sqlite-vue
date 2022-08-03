<!-- https://github.com/bazingaedward/monaco-editor-vue3/blob/main/src/MonacoEditor.vue -->
<template>
  <div class="monaco-editor-vue3" ref="el"></div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'
import type * as monaco from 'monaco-editor'
import { create } from '@/editor'

const emit = defineEmits(['change'])

let editor: monaco.editor.ICodeEditor

const el = ref()
onMounted(() => {
  editor = create(el.value)

  // @event `change`
  editor.onDidChangeModelContent(event => {
    const value = editor.getValue()
    emit('change', value, event)
  })
})
</script>
