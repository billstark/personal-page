<template lang="html">
  <div class="ability-info full-height-container">
    <div class="ability-info-container container">
      <div class="title">
        <h4 class="i-have">I HAVE</h4>
      </div>
      <div class="body">
        <div class="summary">
          <p>
            In this two and half years of study, I have accomplished what I intended to do. Following
            Professor Ben Leong's "Path of Pain", I survived from the heavy workload and indeed, have
            learnt a lot.
          </p>
        </div>
        <div class="accomplishments">
          <div class="accomp-item">
            <div class="icon">
              <icon name="code" scale="2"></icon>
            </div>
            <div class="description">
              <h3>Good code</h3>
              <p>
                I have taken three software-engineering-based courses and during the development I realized
                the importance of good code quality. Comments, variables naming, encapsulation, unit testing,
                continuous integration and structure designs, all of these would decide how the projects go
                and how good it will be.
              </p>
            </div>
          </div>
          <div class="accomp-item">
            <div class="icon">
              <icon name="space-shuttle" scale="2"></icon>
            </div>
            <div class="description">
              <h3>Efficiency</h3>
              <p>
                The heavy workload forced me to learn to manage my time well. I have developed a general 
                priciple on how to deal with multiple tasks; first finish all tasks with equal efforts
                quickly and spend more time on those which that have more room for improvement.
              </p>
            </div>
          </div>
          <div class="accomp-item">
            <div class="icon">
              <icon name="globe" scale="2"></icon>
            </div>
            <div class="description">
              <h3>Open mind</h3>
              <p>
                I am always trying to be exposed to new things not only in my study but also in my life. 
                That is indeed the reason why I took workload-heavy modules, enjoyed the suffering and 
                the reason why I want to study abroad, work abroad, be involved into different cultures
                and environments.
              </p>
            </div>
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
@import '../../../assets/sass/common.scss';
@import '../../../assets/sass/variable.scss';

// for abilities
.ability-info {
  background-color: $choco;
  .ability-info-container {
    .i-have {
      text-align: center;
      color: $paper;
      opacity: .8;
      font-family: 'GT-Walsheim';
      font-size: 30px;
      letter-spacing: 2px;
      margin-top: 100px;
      margin-bottom: 20px;
    }
  }
}

.body {
  .summary {
    display: flex;
    flex-direction: row;
    justify-content: center;
    color: $paper;
    opacity: .4;
    display: flex;
    font-weight: 300;

    p {
      text-align: center;
      width: 600px;
      font-size: 14px;
    }
  }
  .accomplishments {
    margin-top: 70px;
    display: flex;
    flex-direction: row;
    .accomp-item {
      flex-grow: 1;
      display: flex;
      flex-direction: row;

      .icon {
        color: rgba(164, 41, 58, 1);
        font-weight: bold;
      }

      .description {
        margin: 5px 0px 0px 20px;
        h3 {
          margin-top: 0px;
          color: $paper;
          opacity: .7;
          font-weight: lighter;
          letter-spacing: 1px;
        }
        p {
          color: $paper;
          opacity: .6;
          width: 250px;
          font-weight: 300;
          font-size: 13px;
        }
      }
    }
  }
}
  
</style>