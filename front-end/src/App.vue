<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'app',
  metaInfo: {
    meta: [
      { name: 'viewport', content: 'width=device-width, initial-scale=1' }
    ]
  }
}
</script>

<style lang="scss">

@font-face {
  font-family: 'Brandon';
  src: url('assets/font/Brandon_thin.otf') format('truetype');
  font-weight: thin;
  font-style: thin;
}

@font-face {
  font-family: 'Brandon';
  src: url('assets/font/Brandon_reg.otf') format('truetype');
  font-weight: 400;
  font-style: normal;
}

body {
  margin: 0px;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  height: 100vh;
}
</style>
