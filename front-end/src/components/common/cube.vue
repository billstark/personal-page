<template>
  <div class="cube">
    <section class="container">
      <div class="cube-content">
        <figure class="front"></figure>
        <figure class="back"></figure>
        <figure class="right"></figure>
        <figure class="left"></figure>
        <figure class="top"></figure>
        <figure class="bottom"></figure>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
@keyframes spin {
  0% {
    transform: rotateX(-20deg) rotateY(0deg);
  }
  50% {
    transform: rotateX(-20deg) rotateY(180deg);
  }
  100% {
    transform: rotateX(-20deg) rotateY(360deg);
  }
}

@keyframes breath {
  0% {
    border: 2px solid #565656;
    box-shadow: 0 0 30px rgba(255, 255, 255, 0);
  }
  50% {
    // border: 2px solid #F4F4F4;
    box-shadow: 0 0 30px rgba(255, 255, 255, 0.2);
  }
  100% {
    border: 2px solid #565656;
    box-shadow: 0 0 30px rgba(255, 255, 255, 0);
  }
}
.cube {
  display: flex;
  flex-direction: row;
  justify-content: center;
}
.container {
  align-self: center;
  height: 100px;
  width: 100px;
  position: relative;

  .cube-content {
    width: 100%;
    height: 100%;
    position: absolute;
    transform-style: preserve-3d;
    animation-name: spin;
    animation-iteration-count: infinite;
    animation-duration: 5s;
    animation-timing-function: linear;

    figure {
      margin: 0px;
      width: 99px;
      height: 99px;
      display: block;
      position: absolute;
      border: 2px solid #fff;
      animation-name: breath;
      animation-iteration-count: infinite;
      animation-duration: 6s;
      animation-timing-function: ease;
    }

    .front { transform: rotateY(   0deg ) translateZ( 50px ); }
    .back   { transform: rotateX( 180deg ) translateZ( 50px ); }
    .right  { transform: rotateY(  90deg ) translateZ( 50px ); }
    .left   { transform: rotateY( -90deg ) translateZ( 50px ); }
    .top    { transform: rotateX(  90deg ) translateZ( 50px ); }
    .bottom { transform: rotateX( -90deg ) translateZ( 50px ); }

  }
}
</style>
