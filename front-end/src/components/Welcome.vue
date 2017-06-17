<template lang="html">
  <div class="container">
    <div class="background"></div>
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
          <use xlink:href="#main-title-new" id="title-anim" />
        </svg>
        <h3>welcome to a little world of Zhuohan</h3>
        <div class="enter-button">
          <div>step in</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Cube from './common/Cube';
import Divider from './common/Divider';
import '../assets/img/main-title-new.svg';

export default {
  components: {
    Cube,
    Divider
  },
  mounted() {

  },
  data() {
    return {
      dividerWidth: 400,
      dividerAnimate: true,
    };
  }
}
</script>

<style lang="scss" scoped>
@import '../assets/sass/animation.scss';

.container {
  font-family: 'Brandon';
  width: 100%;
  height: 100%;
}

.background {
  position: fixed;
  top: 0px;
  bottom: 0px;
  left: 0px;
  right: 0px;
  z-index: -2;
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
  z-index: -1;
}

.content {
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;

  .main-wrapper {
    text-align: center;

    .cube {
      transform: scale(.7);
    }

    .main-title {
      margin-top: 60px;
      width: 400px;
      height: 60px;

      #title-anim {
        fill-opacity: 0;
        stroke-width: 3px;
        stroke-dasharray: 1000;
        stroke-dashoffset: 1000;
        animation: dash 4s linear forwards;
        animation-delay: .5s;
      }
    }
  }

  h3 {
    margin-top: 0px;
    font-size: 20px;
    font-weight: 300;
    color: #fff;
    letter-spacing: 1px;
    opacity: 0;
    animation: floatUp ease-in .5s forwards;
    animation-delay: 4.5s;
  }

  .enter-button {
    margin-top: 70px;
    display: flex;
    flex-direction: row;
    justify-content: center;

    opacity: 0;
    animation: floatUp ease-in .5s forwards;
    animation-delay: 5s;

    div {
      cursor: pointer;
      padding: 10px 30px;
      width: 150px;
      color: #fff;
      font-size: 26px;
      font-weight: 400;
      line-height: 26px;
      border: 2px solid #fff;
      border-radius: 50px;
      transition: background-color .3s ease;

      &:hover {
        background-color: #fff;
        color: #333;
      }
    }
  }
}

</style>
