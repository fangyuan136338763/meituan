import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import footer from './components/footer.vue'

import 'mint-ui/lib/style.css'
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'

Vue.config.productionTip = false;

Vue.component(footer.name,footer);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
