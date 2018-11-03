import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    cartCount: 0,
    counts: 0
  },
  mutations: {
    increment(state){state.cartCount++},
    substract(state){state.cartCount--},
    clearCount(state){state.cartCount=0},
  },
  getters: {
    optCount: function(state){
      return state.cartCount;
    }
  },
  actions: {

  }
})
