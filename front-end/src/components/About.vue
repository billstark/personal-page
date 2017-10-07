<template lang="html">
  <div class="container">
    <heade></heade>
    <div class="top-banner">
      <!-- <div class="cover"></div> -->
      <div class="banner-content">
        <!-- <h1>Yang Zhuohan</h1> -->
        <!-- <h1>YANG ZHUOHAN</h1> -->
        <h1>yang zhuohan</h1>
        <h4>Software Engineer & Designer</h4>
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
          <p class="forward">
            <i>"Fireborn,
            the traveller,<br> 
            the painter,
            guardian of the night, <br>
            a student of Computer Science."<br></i>            
          </p>

          <p>
            I was born in <b>Chongqing, China</b>. (Chongqing is famous for its hot weather. That's why I call <br> 
            myself "Fireborn" XD) I am currently an undergraduate from <b>National University of Singapore</b>, <br>
            majoring in <b>Computer Science</b>. Apart from <b>coding</b> till mid-night, I am kin of <b>travelling</b> and <br> 
            <b>photography</b>. I intend to be an excellent <b>software engineer</b>.
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
  font-family: 'Brandon';
}

// for top banner
.top-banner {
  height: 100vh;
  width: 100%;
  background-color: #000;
  // background-image: url("../assets/img/xv.png");
  // background-image: url("../assets/img/inspiration-geometry.png");


  display: flex;
  flex-direction: row;
  justify-content: center;

  &::before {
    content: "";
    position: absolute;
    width: 100%;
    height: 100vh;
    z-index: 1;
    background-image: url("../assets/img/shattered.png");
    opacity: .7;
  }

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
    height: 100vh;
    z-index: 2;
    display: flex;
    justify-content: center;
    flex-direction: column;
    color: $paper;
    opacity: 0;
    animation: floatDown 1s 2.5s linear forwards;

    h1 {
      margin-bottom: 0px;
      letter-spacing: 10px;
      font-size: 70px;
      font-weight: 500;
      color: $tan;
    }

    h4 {
      margin-top: 0px;
      color: $sand;
      letter-spacing: 3px;
      font-weight: 300;
      font-size: 22px;
    }

    .download-resume {
      margin-top: 30px;
      display: flex;
      flex-direction: row;
      justify-content: center;

      .download-button {
        text-align: center;
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
    font-size: 16px;

    p {
      margin-top: 30px;
    }

    .forward {
      margin-top: 0px;
      line-height: 25px;
      font-size: 14px;
    }
  }
}

</style>
