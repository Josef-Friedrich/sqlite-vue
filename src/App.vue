<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <div class="wrapper">
      <nav class="UnderlineNav">
        <div class="UnderlineNav-body" role="tablist">
          <RouterLink class="UnderlineNav-item" role="tab" type="button" to="/"
            >Home</RouterLink
          >
          <RouterLink
            class="UnderlineNav-item"
            role="tab"
            type="button"
            to="/database"
            >Database</RouterLink
          >
          <RouterLink
            class="UnderlineNav-item"
            role="tab"
            type="button"
            to="/about"
            >About</RouterLink
          >
        </div>
      </nav>
    </div>
  </header>

  <RouterView />
</template>
