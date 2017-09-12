<template lang="html">
  <div class="header-container">
    <div class="header">
      <div class="header-logo">
        <cube class="cube" color="#DCD0C0"></cube>
      </div>
      <div class="header-items">
        <div class="current-title">
          <h3>{{ title }}</h3>
        </div>
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

.cube {
  width: 100px;
  transform: scale(.3);
  position: relative;
  left: 15px;
  top: -5px;
}

.header-container {
  height: 70px;
  background: none;
  position: absolute;
  top: 0px;
  left: 0px;
  right: 0px;
  // border-bottom: 2px solid #fff;
  z-index: 10;
  display: flex;
  flex-direction: row;
  justify-content: center;

  .header {
    max-width: 1024px;
    width: 100%;
    display: flex;
    flex-direction: row;
  }
}

.header-logo {
  width: 100px;
  height: 70px;
}

.header-items {
  width: calc(100% - 100px);
  height: 70px;
  display: flex;
  flex-direction: row;
  justify-content: space-between;

  .current-title {
    width: 100px;
    h3 {
      color: $silk;
      margin-top: 35px;
    }
  }

  .item-list {
    margin-top: 15px;
    ul {
      li {
        display: inline-block;
        margin-left: 20px;
        color: #fff;
        cursor: pointer;
        padding: 5px;
        &:hover {
          color: $silk;
          border-bottom: 2px solid $silk;
        }
        &.active {
          color: $silk;
          border-bottom: 2px solid $silk;
        }
      }
    }
  }
}

</style>
