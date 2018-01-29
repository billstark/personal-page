<template lang="html">
  <div class="container">
    <div class="desktop-container">
      <heade></heade>

      <transition name="fade" mode="out-in">
        <router-view></router-view>
      </transition>
    </div>

    <div class="temp-mobile-holder">
      <mholder></mholder>
    </div>
  </div>
</template>

<script>

import Heade from './common/Header';
import Mholder from './common/mholder';
import About from './about/About';
import Gallery from './gallery/Gallery';

export default {
  data() {
    return {
    };
  },
  computed: {},
  ready() {},
  attached() {},
  methods: {},
  components: {
    Heade,
    Mholder,

    About,
    Gallery
  },
  metaInfo: {
    title: "World In Square - About"
  }
};
  
</script>

<style lang="scss" scoped>

@import '../assets/sass/animation.scss';
@import '../assets/sass/common.scss';
@import '../assets/sass/variable.scss';

.container {
  opacity: 0;
  animation: fadeIn .6s .5s linear forwards;
  font-family: 'GT-Walsheim';
}
  
</style>