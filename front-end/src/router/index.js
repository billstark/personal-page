import Vue from 'vue'
import Router from 'vue-router'
import VueParticles from 'vue-particles';
import Hello from '@/components/Hello'
import Welcome from '@/components/Welcome'
import Test from '@/components/Test'

Vue.use(Router)
Vue.use(VueParticles)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Welcome',
      component: Welcome
    },
    {
      path: '/test',
      name: 'Test',
      component: Test
    }
  ]
});
