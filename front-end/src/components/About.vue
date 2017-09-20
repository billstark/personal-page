<template lang="html">
  <div class="container">
    <heade></heade>
    <div class="top-banner">
      <div class="cover"></div>
      <div class="banner-content">
        <!-- <h1>Yang Zhuohan</h1> -->
        <h1>YANG ZHUOHAN</h1>
        <h4>Software Engineer & Designer</h4>
        <div class="social-media">
          <a class="sm-icon" href="https://www.linkedin.com/in/zhuohan-yang-8ba3a5117/">
            <icon name="linkedin-square" scale="2" class="icon"></icon>
          </a>
          <a class="sm-icon" href="https://github.com/billstark">
            <icon name="github-square" scale="2" class="icon"></icon>
          </a>
          <a class="sm-icon" href="https://www.facebook.com/profile.php?id=100005438507300">
            <icon name="facebook-square" scale="2" class="icon"></icon>
          </a>
        </div>
      </div>
    </div>

    <div class="short-intro">

    </div>
  </div>
</template>

<script>
import Heade from './common/Header';
import Icon from 'vue-awesome/components/Icon'

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
    Icon
  }
};
</script>

<style lang="scss" scoped>
@import '../assets/sass/animation.scss';
@import '../assets/sass/variable.scss';

.top-banner {
  height: calc(100vh - 100px);
  width: 100%;
  background-image: url("../assets/img/IMG_3924.jpg");
  background-position: bottom left;
  background-repeat: no-repeat;
  background-size: cover;
  display: flex;
  flex-direction: row;
  justify-content: center;
  opacity: 0;
  animation: fadeIn 1s .5s linear forwards;

  .cover {
    position: absolute;
    left: 0px;
    right: 0px;
    height: calc(100vh - 100px);
    background-color: #000;
    opacity: .52;
    z-index: 1;
  }

  .banner-content {
    text-align: center;
    position: absolute;
    width: 100%;
    max-width: 1024px;
    height: calc(100vh - 200px);
    z-index: 2;
    padding: 40px 50px 50px 50px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    color: $paper;
    opacity: 0;
    animation: floatDown 1s 2.5s linear forwards;

    h1 {
      margin-bottom: 0px;
      color: $shell;
    }

    h4 {
      margin-top: 10px;
      color: $sand;
      font-weight: 300;
    }

    .social-media {
      display: flex;
      flex-direction: row;
      justify-content: center;
      margin-top: 10px;
      .sm-icon {
        display: inline-block;
        margin-right: 10px;
        cursor: pointer;

        .icon {
          color: lighten($tan, 10%);
          opacity: .8;
          transition: all .5s;
          &:hover {
            opacity: .5;
          }
        }
      }
    }
  }
}

.short-intro {
  height: 100vh
}

</style>
