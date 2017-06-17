<template lang="html">
  <div class="divider-container">
    <div class="divider"
         v-bind:style="{'border-color': borderColor, 'width': width + 'px'}"
         v-bind:class="[animate ? 'hasAnimate' : '']">
    </div>
  </div>
</template>

<script>
export default {
  props: ['width', 'borderColor', 'animate']
}
</script>

<style lang="scss" scoped>
.divider-container {
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: center;
}
.divider {
  border-top: 1px solid #fff;
}

.hasAnimate {
  opacity: 0;
  animation: floatUp ease-in .5s forwards;
  animation-delay: 4s;
}
</style>
