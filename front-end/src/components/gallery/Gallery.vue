<template lang="html">
  <div class="container">
    <div class="desktop-container">
      <heade></heade>
    </div>
    
  </div>
</template>

<script>
import Heade from './../common/Header';
  
export default {
  data() {
    return {};
  },
  created: function() {
    console.log("aaaaaa");
  },
  computed: {},
  ready() {},
  attached() {},
  methods: {

  },
  components: {
    Heade
  },
  metaInfo: {
    title: "World In Square - Gallery"
  }
}

</script>

<style lang="scss" scoped>
@import '../../assets/sass/animation.scss';
@import '../../assets/sass/common.scss';
@import '../../assets/sass/variable.scss';


</style>