<!-- https://github.com/bazingaedward/monaco-editor-vue3/blob/main/src/MonacoEditor.vue -->
<template>
  <div class="monaco-editor-vue3"></div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import * as monaco from 'monaco-editor'
import { create } from '@/editor'

export default defineComponent({
  name: 'MonacoEditor',
  emits: ['editorWillMount', 'editorDidMount', 'change'],
  mounted () {
    this.initMonaco()
  },
  beforeDestroy (): void {
    this.editor && this.editor.dispose()
  },
  methods: {
    initMonaco (): void {
      this.$emit('editorWillMount', monaco)
      // https://microsoft.github.io/monaco-editor/api/interfaces/monaco.editor.IStandaloneEditorConstructionOptions.html
      this.editor = create(this.$el)

      // @event `change`
      this.editor.onDidChangeModelContent(event => {
        const value = this.editor.getValue()
        if (this.value !== value) {
          this.$emit('change', value, event)
        }
      })

      this.$emit('editorDidMount', this.editor)
    },

    _setValue (value: string) {
      if (this.editor) {
        return this.editor.setValue(value)
      }
    },
    _getValue (): string {
      if (!this.editor) {
        return ''
      }
      return this.editor.getValue()
    }
  },
  watch: {
    value () {
      this.value !== this._getValue() && this._setValue(this.value)
    }
  }
})
</script>
