import * as monaco from 'monaco-editor'

// https://github.com/vitejs/vite/discussions/1791
import editorWorker from 'monaco-editor/esm/vs/editor/editor.worker?worker'
import jsonWorker from 'monaco-editor/esm/vs/language/json/json.worker?worker'
import cssWorker from 'monaco-editor/esm/vs/language/css/css.worker?worker'
import htmlWorker from 'monaco-editor/esm/vs/language/html/html.worker?worker'
import tsWorker from 'monaco-editor/esm/vs/language/typescript/ts.worker?worker'

// Since packaging is done by you, you need
// to instruct the editor how you named the
// bundles that contain the web workers.
self.MonacoEnvironment = {
  getWorkerUrl: function (moduleId: string, label: string) {
    console.log(label)
    if (label === 'json') {
      return new jsonWorker()
    }
    if (label === 'css') {
      return new cssWorker()
    }
    if (label === 'html') {
      return new htmlWorker()
    }
    if (label === 'typescript' || label === 'javascript') {
      return new tsWorker()
    }
    return new editorWorker()
  }
}

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

export let editor: monaco.editor.IStandaloneCodeEditor | null

export function create (
  element: HTMLElement
): monaco.editor.IStandaloneCodeEditor {
  editor = monaco.editor.create(element, {
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
  return editor
}
