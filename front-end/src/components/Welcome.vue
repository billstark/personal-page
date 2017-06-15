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
      <div class="main-wrapper">
        <cube class="cube"></cube>
        <svg class="main-title">
          <use xlink:href="#main-title-1" id="title-anim" />
          <use xlink:href="#main-title" id="title-real" />
        </svg>
      </div>
    </div>
  </div>
</template>

<script>
import Cube from './common/Cube';
import '../assets/img/main-title.svg';
import '../assets/img/main-title-1.svg';

export default {
  components: {
    Cube
  },
  mounted() {

  },
  data() {
    return {
    };
  }
}
</script>

<style lang="scss" scoped>
@import '../assets/sass/animation.scss';

.container {
  width: 100%;
  height: 100%;
  background: #303030; /* Old browsers */
  background: -moz-radial-gradient(center, ellipse cover, #303030 0%, #000000 100%); /* FF3.6-15 */
  background: -webkit-radial-gradient(center, ellipse cover, #303030 0%,#000000 100%); /* Chrome10-25,Safari5.1-6 */
  background: radial-gradient(ellipse at center, #303030 0%,#000000 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#303030', endColorstr='#000000',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
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

  .main-wrapper {
    text-align: center;

    .cube {
      transform: scale(.6);
    }

    .main-title {
      margin-top: 20px;
      width: 500px;


      #title-anim {
        stroke-width: 3px;
        stroke-dasharray: 1000;
        stroke-dashoffset: 1000;
        animation: dash 4s linear forwards;
      }

      #title-real {
        animation: appearWithDelay 3s linear;
      }
    }
  }
}

</style>
