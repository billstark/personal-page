<template lang="html">
  <div class="container">
    <heade></heade>
    <div class="top-banner">
      <div class="cover"></div>
      <div class="banner-content">
        <h1>Yang Zhuohan</h1>
        <h4>Software Engineer</h4>
        <div class="social-media">
          <div class="sm-icon">
            <icon name="linkedin-square" scale="2" class="icon"></icon>
          </div>
          <div class="sm-icon">
            <icon name="github-square" scale="2" class="icon"></icon>
          </div>
          <div class="sm-icon">
            <icon name="facebook-square" scale="2" class="icon"></icon>
          </div>
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

  .cover {
    position: absolute;
    left: 0px;
    right: 0px;
    height: calc(100vh - 100px);
    background-color: #000;
    opacity: .4;
    z-index: 1;
  }

  .banner-content {
    position: absolute;
    width: 100%;
    max-width: 1024px;
    height: calc(100vh - 200px);
    z-index: 2;
    padding: 90px 50px 50px 10px;
    text-align: right;
    display: flex;
    justify-content: center;
    flex-direction: column;
    color: $paper;

    h1 {
      margin-bottom: 0px;
    }

    h4 {
      margin-top: 10px;
      color: $silk;
      font-weight: 300;
    }

    .social-media {
      display: flex;
      flex-direction: row;
      justify-content: flex-end;
      margin-top: 10px;
      .sm-icon {
        display: inline-block;
        margin-right: 10px;
        cursor: pointer;

        .icon {
          color: $gold;
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
