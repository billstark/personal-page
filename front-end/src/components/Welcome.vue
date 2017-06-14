<template lang="html">
  <div class="container">
    <vue-particles
      class="particles"
      color="#fff"
      :particlesNumber="90"
      :particleSize="1"
      :moveSpeed="2"
      :lineLinked="false"
      :hoverEffect="false"
      :clickEffect="false"
    >
    </vue-particles>
    <div class="content">
      <cube class="cube"></cube>
    </div>
  </div>
</template>

<script>
import Cube from './common/Cube';

export default {
  components: {
    Cube
  },
  mounted() {

  }
}

// window.onload = function() {
//   Particles.init({
//     selector: '#container'
//   });
// }
</script>

<style lang="scss" scoped>
.container {
  width: 100%;
  height: 100%;
}

.particles {
  position: fixed;
  top: 0px;
  bottom: 0px;
  left: 0px;
  right: 0px;
}

.content {
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;

  .cube {
    transform: scale(.6);
  }
}

</style>
