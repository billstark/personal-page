<template lang="html">
  <div class="container">
    <heade></heade>

    <!-- top banner  -->
    <div class="top-banner full-height-container">
      <div class="banner-content container">
        <h1>YANG ZHUOHAN</h1>
        <h4>Software Engineer & Designer</h4>
        <div class="download-resume">
          <div class="download-button">
            resume.download
          </div>
        </div>
      </div>
    </div>

    <short-intro></short-intro>
    <abilities></abilities>
    <experiences></experiences>
    <contact></contact>
    <foote></foote>
  </div>
</template>

<script>
import Heade from './../common/Header';
import Foote from './../common/footer';
import ShortIntro from './parts/ShortIntro';
import Abilities from './parts/Abilities';
import Experiences from './parts/Experiences';
import Contact from './parts/Contact';

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
    Foote,
    ShortIntro,
    Abilities,
    Experiences,
    Contact
  }
};
</script>

<style lang="scss" scoped>
@import '../../assets/sass/animation.scss';
@import '../../assets/sass/common.scss';
@import '../../assets/sass/variable.scss';

.container {
  opacity: 0;
  animation: fadeIn .6s .5s linear forwards;
  font-family: 'GT-Walsheim';
}

// for top banner
.top-banner {
  background-color: #000;

  &::before {
    content: "";
    position: absolute;
    width: 100%;
    min-width: 1024px;
    height: 100vh;
    z-index: 1;
    background-image: url("../../assets/img/shattered.png");
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
      margin-top: 10px;
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
        width: 140px;
        border-radius: 50px;
        cursor: pointer;
        transition: background-color .3s ease;

        &:hover {
          color: $blackboard;
          background-color: $shell;
        }
      }
    }
  }
}

</style>
