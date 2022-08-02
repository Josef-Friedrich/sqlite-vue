<!-- https://github.com/bazingaedward/monaco-editor-vue3/blob/main/src/MonacoEditor.vue -->
<template>
  <div class="monaco-editor-vue3"></div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import * as monaco from 'monaco-editor'

// https://github.com/SadeghPM/sql-vscode-snipptes/blob/master/snippets/snippets.json
monaco.languages.registerCompletionItemProvider('sql', {
  provideCompletionItems: (model, position, context, token) => {
    const word = model.getWordUntilPosition(position)
    const range = {
      startLineNumber: position.lineNumber,
      endLineNumber: position.lineNumber,
      startColumn: word.startColumn,
      endColumn: word.endColumn
    }
    return {
      suggestions: [
        {
          label: 'SELECT FROM',
          kind: monaco.languages.CompletionItemKind.Snippet,
          documentation: 'select',
          insertText: 'SELECT ${1:*} FROM ${2:table}',
          insertTextRules:
            monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
          range
        }
      ]
    }
  }
})

export default defineComponent({
  name: 'MonacoEditor',
  emits: ['editorWillMount', 'editorDidMount', 'change'],
  mounted () {
    this.initMonaco()
  },
  beforeDestroy () {
    this.editor && this.editor.dispose()
  },
  methods: {
    initMonaco () {
      this.$emit('editorWillMount', monaco)
      // https://microsoft.github.io/monaco-editor/api/interfaces/monaco.editor.IStandaloneEditorConstructionOptions.html
      this.editor = monaco.editor.create(this.$el, {
        language: 'sql',
        theme: 'vs-dark',
        fontSize: 26,
        lineNumbers: 'off',
        lineDecorationsWidth: 0,
        minimap: { enabled: false },
        scrollbar: {
          vertical: 'hidden',
          horizontal: 'hidden'
        },
        renderLineHighlight: 'none',
        overviewRulerLanes: 0
      })

      // @event `change`

      this.editor.onDidChangeModelContent(event => {
        const value = this.editor.getValue()
        if (this.value !== value) {
          this.$emit('change', value, event)
        }
      })

      this.$emit('editorDidMount', this.editor)
    },

    _setValue (value) {
      if (this.editor) {
        return this.editor.setValue(value)
      }
    },
    _getValue () {
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
