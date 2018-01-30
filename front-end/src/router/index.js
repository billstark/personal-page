import Vue from 'vue'
import Router from 'vue-router'
import Resource from 'vue-resource'
import Meta from 'vue-meta'
import VueParticles from 'vue-particles'
import Welcome from '@/components/Welcome'
import About from '@/components/about/About'
import Gallery from '@/components/gallery/Gallery'
import Main from '@/components/Main'
import Test from '@/components/Test'

Vue.use(Router)
Vue.use(Meta)
Vue.use(VueParticles)
Vue.use(Resource)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Welcome',
      component: Welcome
    },
    {
      path: '/main',
      name: 'Main',
      component: Main,
      children: [
        {
          path: 'about',
          component: About
        },
        {
          path: 'gallery',
          component: Gallery
        }
      ]
    },
    {
      path: '/test',
      name: 'Test',
      component: Test
    }
  ]
});
