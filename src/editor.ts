import * as monaco from 'monaco-editor'

// https://github.com/vitejs/vite/discussions/1791
self.MonacoEnvironment = {
  getWorker: async function () {
    const worker = await import(
      'monaco-editor/esm/vs/editor/editor.worker?worker'
    )
    return new worker.default()
  }
}

// https://github.com/SadeghPM/sql-vscode-snipptes/blob/master/snippets/snippets.json
monaco.languages.registerCompletionItemProvider('sql', {
  provideCompletionItems: (model, position) => {
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

export let editor: monaco.editor.IStandaloneCodeEditor | null
// https://microsoft.github.io/monaco-editor/api/interfaces/monaco.editor.IStandaloneEditorConstructionOptions.html
export function create(
  element: HTMLElement
): monaco.editor.IStandaloneCodeEditor {
  editor = monaco.editor.create(element, {
    language: 'sql',
    theme: 'vs-dark',
    fontSize: 32,
    lineNumbers: 'off',
    lineDecorationsWidth: 0,
    minimap: { enabled: false },
    scrollbar: {
      vertical: 'hidden',
      horizontal: 'hidden'
    },
    renderLineHighlight: 'none',
    overviewRulerLanes: 0,
    padding: { top: 15, bottom: 15 },
    wordWrap: 'on'
  })
  return editor
}
