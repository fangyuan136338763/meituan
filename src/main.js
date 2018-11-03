import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Footer from './components/Footer.vue'
import Mock from './mock'
import Axios from 'axios'

// import 'mint-ui/lib/style.css'
// import './lib/mui/css/mui.css'
// import './lib/mui/css/icons-extra.css'
import './assets/css/base.css'

Vue.config.productionTip = false;
Vue.prototype.$http = Axios;

Vue.component(Footer.name,Footer);

var bus = new Vue();

new Vue({
  data:{
    bus
  },
  router,
  store,
  render: h => h(App)
}).$mount('#app')
