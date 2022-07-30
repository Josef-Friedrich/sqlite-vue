<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import initSqlJs from 'sql.js'

// Create a database
</script>

<script lang="ts">
async function fetchSqlFile (url: string): Promise<string> {
  return await (await fetch(url)).text()
}

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

    // const sqlDump = await fetchSqlFile(
    //   ''
    // )
    // console.log(sqlDump)
    // db.run(sqlDump)

    // Run a query without reading the results
    db.run(`CREATE TABLE "Mond" (
  "Name" varchar(45) NOT NULL,
  "Planet" varchar(45) DEFAULT NULL,
  "Halbachse" int DEFAULT NULL,
  "Durchmesser" int DEFAULT NULL,
  "Umlaufzeit" decimal(8,1) DEFAULT NULL,
  "entdeckt" int DEFAULT NULL,
  PRIMARY KEY ("Name")
);`)
    // Insert two rows: (1,111) and (2,222)
    db.run(
      `INSERT INTO "Mond" VALUES ('Adrastea','Jupiter',129000,16,0.3,1979);`
    )

    // Prepare a statement
    const stmt = db.prepare('SELECT * FROM Mond')

    // Bind new values
    // stmt.bind({ $start: 1, $end: 2 })
    const rows = []
    while (stmt.step()) {
      console.log(stmt.getSQL())
      //
      rows.push(stmt.get())
      const row = stmt.getAsObject()
      console.log('Here is a row: ' + JSON.stringify(row))
    }
  }
}
</script>

<template>
  <header>
    <div class="wrapper">
      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>
