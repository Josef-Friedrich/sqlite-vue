<script setup lang="ts">
import type { Table } from '@/store'
interface Props {
  table: Table
}

const props = defineProps<Props>()
</script>

<template>
  <section class="content">
    <h2>{{ table.name }}</h2>

    <table class="table is-striped is-bordered is-hoverable is-narrow">
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
