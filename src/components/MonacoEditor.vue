<!-- https://github.com/bazingaedward/monaco-editor-vue3/blob/main/src/MonacoEditor.vue -->
<template>
  <div class="monaco-editor-vue3"></div>
</template>

<script lang="ts">
import { defineComponent, computed, toRefs } from 'vue'
import * as monaco from 'monaco-editor'

export default defineComponent({
  name: 'MonacoEditor',
  props: {
    original: String,
    options: {
      type: Object,
      default () {
        return {}
      }
    }
  },
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
      if (this.editor) return editor.setValue(value)
    },
    _getValue () {
      if (!this.editor) return ''
      return editor.getValue()
    }
  },
  watch: {
    value () {
      this.value !== this._getValue() && this._setValue(this.value)
    }
  }
})
</script>
