<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import HelloWorld from './components/HelloWorld.vue'
import initSqlJs from 'sql.js'

// Create a database
</script>

<script lang="ts">
export default {
  async mounted () {
    const SQL = await initSqlJs({
      // Required to load the wasm binary asynchronously. Of course, you can host it wherever you want
      // You can omit locateFile completely when running in node
      // `node_modules/sql.js/dist/${file}`
      // `https://sql.js.org/dist/${file}`
      locateFile: file => `https://sql.js.org/dist/${file}`
    })
    const db = new SQL.Database()

    // Run a query without reading the results
    db.run('CREATE TABLE test (col1, col2);')
    // Insert two rows: (1,111) and (2,222)
    db.run('INSERT INTO test VALUES (?,?), (?,?)', [1, 111, 2, 222])

    // Prepare a statement
    const stmt = db.prepare(
      'SELECT * FROM test WHERE col1 BETWEEN $start AND $end'
    )
    stmt.getAsObject({ $start: 1, $end: 1 }) // {col1:1, col2:111}

    // Bind new values
    stmt.bind({ $start: 1, $end: 2 })
    while (stmt.step()) {
      //
      const row = stmt.getAsObject()
      console.log('Here is a row: ' + JSON.stringify(row))
    }
  }
}
</script>

<template>
  <header>
    <img
      alt="Vue logo"
      class="logo"
      src="@/assets/logo.svg"
      width="125"
      height="125"
    />

    <div class="wrapper">
      <HelloWorld msg="You did it!" />

      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<style scoped>
header {
  line-height: 1.5;
  max-height: 100vh;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }

  nav {
    text-align: left;
    margin-left: -1rem;
    font-size: 1rem;

    padding: 1rem 0;
    margin-top: 1rem;
  }
}
</style>
