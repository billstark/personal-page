<template lang="html">
  <div class="mobile-temp-container">
    <div class="cover"></div>
    <div class="msg">
      <h1>Oops!</h1>
      <div class="msg-text">
        <p>Sorry, the web page is not available on mobile yet. Zhuohan is working hard to make it happen.</p>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  data() {
    return {
    };
  },
  components: {
  }
};

</script>

<style lang="scss" scoped>
@import '../../assets/sass/common.scss';
@import '../../assets/sass/variable.scss';

.mobile-temp-container {
  background-color: #000;
  position: fixed;
  top: 0px;
  left: 0px;
  bottom: 0px;
  right: 0px;
  z-index: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  text-align: center;
  color: $paper;

  .cover {
    position: absolute;
    top: 0px;
    left: 0px;
    bottom: 0px;
    right: 0px;
    z-index: 1;
    background-image: url("../../assets/img/shattered.png");
    opacity: .7;
  }

  .msg-text {
    display: flex;
    justify-content: center;
    flex-direction: row;
    p {
      font-weight: 300;
      width: 70%;
    }
  }
}

</style>