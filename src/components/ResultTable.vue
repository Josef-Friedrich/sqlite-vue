<script lang="ts">
export default {
  props: {
    tableName: String,
    columnNames: Array,
    rows: Array
  }
}
</script>

<template>
  <section>
    {{ tableName }}
    <table>
      <tr v-for="row in rows" :key="row[0]">
        <td v-for="cell in row" :key="cell">
          {{ cell }}
        </td>
      </tr>
    </table>
  </section>
</template>
