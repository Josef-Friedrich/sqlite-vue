<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <nav class="navbar" role="navigation" aria-label="main navigation">
      <div class="navbar-start">
        <RouterLink class="navbar-item" to="/">Query</RouterLink>
        <RouterLink class="navbar-item" to="/database">Database</RouterLink>
        <RouterLink class="navbar-item" to="/about">About</RouterLink>
      </div>
    </nav>
  </header>

  <RouterView class="container" />
</template>
