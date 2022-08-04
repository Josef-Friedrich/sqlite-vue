import { fileURLToPath, URL } from 'node:url'

import packageConfig from './package.json' assert { type: 'json' };

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import monaco from 'rollup-plugin-monaco-editor'
// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    monaco({
      languages: ['sql']
    })
  ],
  build: {
    minify: 'esbuild',
    target: 'esnext'
  },
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },
  define: {
    VERSION: JSON.stringify(packageConfig.version)
  }
})
