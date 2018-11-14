import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Footer from './components/Footer.vue'
// import Mock from './mock'
import Axios from 'axios'
import VueLazyLoad from 'vue-lazy-load'
import {Toast} from 'mint-ui'

import 'mint-ui/lib/style.css'
// import './lib/mui/css/mui.css'
// import './lib/mui/css/icons-extra.css'
import './assets/css/base.css'


Vue.use(VueLazyLoad,{
  preload: 1.3,
  error: '../public/img/index/logo.42591fec.png',
  loading: '../public/img/index/default-bg.a79a9717.png'
});

Vue.config.productionTip = false;
Vue.prototype.$http = Axios;
// Vue.prototype.$toast = Toast;

Vue.component(Footer.name,Footer);
Toast.install = function(Vue){
  Vue.prototype.$toast = Toast
};
Vue.use(Toast);



var bus = new Vue();

new Vue({
  data:{
    bus
  },
  router,
  store,
  render: h => h(App)
}).$mount('#app')
