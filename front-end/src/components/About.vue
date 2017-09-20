<template lang="html">
  <div class="container">
    <heade></heade>
    <div class="top-banner">
      <div class="cover"></div>
      <div class="banner-content">
        <!-- <h1>Yang Zhuohan</h1> -->
        <h1>YANG ZHUOHAN</h1>
        <h4>Software Engineer & Designer</h4>
        <!-- <div class="social-media">
          <a class="sm-icon" href="https://www.linkedin.com/in/zhuohan-yang-8ba3a5117/">
            <icon name="linkedin" scale="1.5" class="icon"></icon>
          </a>
          <a class="sm-icon" href="https://github.com/billstark">
            <icon name="github" scale="1.5" class="icon"></icon>
          </a>
          <a class="sm-icon" href="https://www.facebook.com/profile.php?id=100005438507300">
            <icon name="facebook" scale="1.5" class="icon"></icon>
          </a>
        </div> -->
        <div class="download-resume">
          <div class="download-button">
            CV.download
          </div>
        </div>
      </div>
    </div>

    <div class="short-intro">
      <div class="intro-container">
        <div class="title">
          <icon name="address-card" class="icon" scale="1.5"></icon>
          <h4 class="i-am">I AM</h4>
        </div>
        <div class="intro">
          <p>
            <i>"Fireborn, <br>
            the traveller, 
            the painter,<br>
            guardian of the night, <br>
            a student of Computer Science."<br></i>            
          </p>
        </div>
      </div>
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

.container {
  opacity: 0;
  animation: fadeIn .6s .5s linear forwards;
}

// for top banner
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
    padding: 40px 0px 0px 0px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    color: $paper;
    opacity: 0;
    animation: floatDown 1s 2.5s linear forwards;

    h1 {
      margin-bottom: 0px;
      // color: $shell;
      color: $tan;
    }

    h4 {
      margin-top: 10px;
      color: $sand;
      font-weight: 300;
    }

    .download-resume {
      margin-top: 20px;
      display: flex;
      flex-direction: row;
      justify-content: center;

      .download-button {
        padding: 7px 20px;
        border: 1px solid $shell;
        color: $shell;
        letter-spacing: .5px;
        background-color: transparent;
        width: 120px;
        border-radius: 50px;
        cursor: pointer;
        transition: background-color .3s ease;

        &:hover {
          color: $blackboard;
          background-color: $shell;
        }
      }
    }

    .social-media {
      display: flex;
      flex-direction: row;
      justify-content: center;
      margin-top: 20px;
      .sm-icon {
        display: inline-block;
        margin-right: 20px;
        cursor: pointer;

        &:nth-child(3) {
          margin-right: 0px;
        }

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

// For intro
.short-intro {
  height: 100vh;
  display: flex;
  flex-direction: row;
  justify-content: center;
}

.intro-container {
  max-width: 1024px;
  width: 100%;
  padding: 50px;

  .title {
    text-align: center;

    .i-am {
      margin-top: 10px;
      letter-spacing: 1px;
    }
  }

  .intro {
    text-align: center;
    font-size: 13px;

    p {
      line-height: 25px;
    }
  }
}

</style>
