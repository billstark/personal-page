<template lang="html">
  <div>
    <transition name="fade">
      <div v-if="loading" class="loading-cube">
        <cube class="cube" color="#565656"></cube>
        <p>Loading...</p>
      </div>
    </transition>
    <div v-if="!loading" class="normal-height-container gallery-container">
      <div class="container">
        <div v-for="imageGroup in imageGroups">
          <h3>{{ imageGroup['category'] }}</h3>
          <div v-for="image in imageGroup['images']" style="display: inline-block">
            <img v-bind:src="image['url']">
          </div>
        </div>
      </div>
    </div>
  </div>  
</template>

<script>
import Cube from './../common/Cube';

var REQUEST_CATEGORIES_END_POINT = 'http://localhost:3000/gallery/categories';
var SLASH = '/';
var ID_KEY = 'id';
var IMAGES_KEY = 'images';
  
export default {
  data() {
    return {
      categories: [],
      imageGroups: [],
      loading: true,
      loadedCount: 0
    };
  },
  created: function() {
    this.getAllCategories();
  },
  computed: {},
  ready() {},
  attached() {},
  methods: {

    getAllCategories: function() {
      this.$http.get(REQUEST_CATEGORIES_END_POINT).then(response => {
        this.categories = response.body;
        this.getAllImages();
      });
    },

    getAllImages: function() {
      for (var i = 0; i < this.categories.length; i++) {

        this.$http.get(REQUEST_CATEGORIES_END_POINT + SLASH + this.categories[i][ID_KEY] + SLASH + IMAGES_KEY).then(response => {
            this.imageGroups.push(response.body);
            this.loadedCount++;
            if (this.loadedCount == Object.keys(this.categories).length) {
              this.loading = false;
            }
        });
      }
    }

  },
  components: {
    Cube
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

.cube {
  transform: scale(.7);
}

.loading-cube {
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  background-color: $paper;
  p {
    text-align: center;
  }
  position: absolute;
  width: 100%;
  z-index: 1;
}

.gallery-container {
  padding-top: 70px;

  img {
    width: 500px;
  }
}


</style>