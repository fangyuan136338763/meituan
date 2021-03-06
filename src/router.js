import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Order from './views/Order.vue'
import Mine from './views/Mine.vue'
import Location from './views/Location.vue'
import Search from './views/Search.vue'
import Classify from './views/Classify.vue'
import Details from './views/Details.vue'
import Login from './views/Login.vue'
import Register from './views/Register.vue'

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
    {path: '/',redirect: '/home'},
    {path: '/home/location',component: Location},
    {path: '/home/search',component: Search},
    {path: '/home/classify/:id',component: Classify},
    {path: '/details/:sid',component: Details},
    {path: '/login',component: Login},
    {path: '/register',component: Register}
    
  ]
})
