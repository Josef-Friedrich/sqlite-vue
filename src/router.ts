import { createRouter, createWebHistory } from 'vue-router'
import QueryView from '@/views/QueryView.vue'
import DatabaseView from '@/views/DatabaseView.vue'
import AboutView from '@/views/AboutView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'query',
      component: QueryView
    },
    {
      path: '/database',
      name: 'database',
      component: DatabaseView
    },
    {
      path: '/about',
      name: 'about',
      component: AboutView
    }
  ]
})

export default router
