<template lang="html">

  <!-- the main container -->
  <div class="container">

    <!-- background and particles -->
<!--     <div class="background"></div>
    <vue-particles
      class="particles"
      color="#76323F"
      :particlesNumber="50"
      :particleSize="2"
      :moveSpeed="2"
      :lineLinked="false"
      :hoverEffect="false"
      :clickEffect="false"
    >
    </vue-particles> -->
    <!-- end of background and particles -->

    <!-- content -->
    <div class="content">

      <div class="main-wrapper">

          <!-- spinning cube -->
          <cube class="cube" color="#565656"></cube>

          <div class="welcome-container">
            <svg class="main-title">
              <use xlink:href="#main-title-new" id="title-anim" />
            </svg>
            <h3>welcome to a little world of Yang Zhuohan</h3>
            <div class="enter-button">
              <router-link :to="{ path: introPath }">
                <div>explore</div>
              </router-link>
            </div>
          </div>

      </div>

    </div>
    <!-- end of content -->

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
      showMenu: false,
      dividerWidth: 400,
      dividerAnimate: true,
      introPath: "/about"
    };
  },
  metaInfo: {
    title: "World In Square - Zhuohan's personal page"
  }
}
</script>

<style lang="scss" scoped>
@import '../assets/sass/animation.scss';
@import '../assets/sass/variable.scss';

.container {
  font-family: 'GT-Walsheim';
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
  background: $paper;
  // background: #303030; /* Old browsers */
  // background: -moz-radial-gradient(center, ellipse cover, #303030 0%, #000000 100%); /* FF3.6-15 */
  // background: -webkit-radial-gradient(center, ellipse cover, #303030 0%,#000000 100%); /* Chrome10-25,Safari5.1-6 */
  // background: radial-gradient(ellipse at center, #303030 0%,#000000 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  // filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#303030', endColorstr='#000000',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
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

    .welcome-container {
      height: 300px;
    }

    .cube {
      transform: scale(.7);
      opacity: 0;
      animation: fadeIn .5s linear forwards;
      animation-delay: 5.5s;
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
    color: $blackboard;
    font-weight: 300;
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
      color: $blackboard;
      font-size: 26px;
      font-weight: 400;
      line-height: 26px;
      border: 2px solid $blackboard;
      border-radius: 50px;
      transition: background-color .3s ease;
      background-color: $paper;

      &:hover {
        background-color: $blackboard;
        color: $paper;
      }
    }
  }
}

/* for mobile responsive */
@media (max-width: $tablet-breakpoint) {
  .content {

    .main-wrapper {

      .welcome-container {
        height: 300px;
      }

      .cube {
        transform: scale(.6);
      }

      .main-title {
        margin-top: 40px;
        width: 250px;
      }
    }

    h3 {
      font-size: 13px;
      margin-top: -15px;
    }

    .enter-button {
      margin-top: 50px;

      div {
        font-size: 20px;
        padding: 5px 10px;
        width: 120px;
      }
    }
  }
}

</style>
