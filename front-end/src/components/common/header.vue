<template lang="html">
  <div class="header-container">
<!--     <vue-particles
      class="particles"
      color="#76323F"
      linesColor="#333"
      :particlesNumber="200"
      :particleSize="2"
      :moveSpeed="1"
      :lineLinked="false"
      :hoverEffect="false"
      :clickEffect="false"
    >
    </vue-particles> -->
    <div class="header">
      <div class="header-logo">
        <cube class="cube" color="#DCD0C0"></cube>
      </div>
      <div class="header-items">
        <div class="item-list">
          <ul>
            <li class="active">about</li>
            <li>projects</li>
            <li>thoughts</li>
            <li>gallery</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Cube from './Cube';

export default {
  data() {
    return {
      title: "About"
    };
  },
  components: {
    Cube
  }
};
</script>

<style lang="scss" scoped>
@import '../../assets/sass/animation.scss';
@import '../../assets/sass/variable.scss';

.particles {
  position: absolute;
  z-index: -1;
  left: 0px;
  right: 0px;
  top: 0px;
  height: 60px;
}

.header-container {
  height: 60px;
  background-color: $paper;
  position: fixed;
  top: 0px;
  left: 0px;
  right: 0px;
  z-index: 10;
  display: flex;
  flex-direction: row;
  justify-content: center;
  opacity: 0;
  animation: floatDown 1s 1.5s linear forwards;
  box-shadow: 0 3px 5px rgba(57, 63, 72, 0.3);

  .header {
    max-width: 1024px;
    width: 100%;
    display: flex;
    flex-direction: row;
  }
}

.header-logo {
  width: 100px;
  height: 50px;
}

.header-items {
  // width: calc(100% - 100px);
  width: 100%;
  height: 50px;
  // display: flex;
  // flex-direction: row;
  // justify-content: space-between;
  // justify-content: space-around;

  .current-title {
    width: 100px;
    h3 {
      color: $choco;
      margin-top: 35px;
    }
  }

  .item-list {
    display: flex;
    flex-direction: row;
    justify-content: flex-end;
    ul {
      width: 100%;
      max-width: 500px;
      display: flex;
      flex-direction: row;
      justify-content: space-around;
      li {
        display: inline-block;
        margin-right: 20px;
        color: $choco;
        cursor: pointer;
        padding-bottom: 10px;
        &:hover {
          color: $oxblood;
          border-bottom: 3px solid $oxblood;
        }
        &.active {
          color: $oxblood;
          border-bottom: 3px solid $oxblood;
        }
      }
    }
  }
}

</style>
