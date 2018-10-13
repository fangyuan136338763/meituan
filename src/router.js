import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Order from './views/Order.vue'
import Mine from './views/Mine.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/home',
      name: 'home',
      component: Home
    },
    {path: '/order',component: Order},
    {path: '/mine',component: Mine},
    {path: '/',redirect: '/home'}
  ]
})
