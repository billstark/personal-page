<template lang="html">
  <div class="footer-container normal-height-container">
    <div class="container">
      <div class="footer-content">
        <div class="wrapper">
          <div class="logo">
            <img src="../../assets/img/logo.png" alt="">
          </div>
          <div class="social-media">
            <a class="media-icon" target="_blank" href="https://www.facebook.com/profile.php?id=100005438507300">
              <icon name="facebook" scale="3"></icon>
            </a>
            <a class="media-icon" target="_blank" href="https://github.com/billstark">
              <icon name="github" scale="3"></icon>
            </a>
            <a class="media-icon" target="_blank" href="https://www.linkedin.com/in/zhuohan-yang-8ba3a5117/">
              <icon name="linkedin" scale="3"></icon>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
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
    Icon
  }
};

</script>

<style lang="scss" scoped>
@import '../../assets/sass/common.scss';
@import '../../assets/sass/variable.scss';

.footer-container {
  background-color: $choco;
}

.footer-content {
  display: flex;
  flex-direction: row;
  justify-content: center;
  padding-bottom: 20px;
  .wrapper {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
  }
  .logo {

    img {
      padding-right: 60px;
      border-right: 1px solid rgba(100, 100, 100, .3);
      width: 100px;
    }
  }

  .social-media {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    width: 400px;
    margin-top: 25px;

    .media-icon {
      color: $paper;
      opacity: .3;
      cursor: pointer;
      transition: all .5s ease;

      &:hover {
        opacity: 1;
      }
    }
  }
}

</style>