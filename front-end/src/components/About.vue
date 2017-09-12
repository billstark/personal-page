<template lang="html">
  <div class="container">
    <heade></heade>
    <div class="top-banner">
      <div class="cover">

      </div>
    </div>

    <div class="short-intro">

    </div>
  </div>
</template>

<script>
import Heade from './common/Header';

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
    Heade
  }
};
</script>

<style lang="scss" scoped>

.top-banner {
  height: calc(100vh - 100px);
  width: 100%;
  background-image: url("../assets/img/IMG_3924.jpg");
  background-position: bottom left;
  background-repeat: no-repeat;
  background-size: cover;

  .cover {
    position: absolute;
    left: 0px;
    right: 0px;
    height: calc(100vh - 100px);
    background-color: #000;
    opacity: .4;
    z-index: 1;
  }
}

.short-intro {
  height: 100vh
}

</style>
