<script setup lang="ts">
import type { Table } from '../stores/table'
interface Props {
  table: Table
}

const props = defineProps<Props>()
</script>

<template>
  <section>
    {{ table.name }}
    <table class="pure-table pure-table-bordered pure-table-striped">
      <thead>
        <tr>
          <th v-for="(name, id) in table.columns" :key="id">
            {{ name }}
          </th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(row, id) in table.rows" :key="id">
          <td v-for="(cell, id) in row" :key="id">
            {{ cell }}
          </td>
        </tr>
      </tbody>
    </table>
  </section>
</template>
