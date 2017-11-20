<template lang="html">
  <div class="contact-info normal-height-container">
    <div class="contact-info-container container">
      <div class="title">
        <h4 class="i-hear-from">I HEAR FROM YOU</h4>
      </div>

      <div class="summary">
        <p>
          If you would like to introduce me an oppotunity or if you have any suggestions on how I should improve my website, please email me through the link below.
        </p>
      </div>

      <div class="mail-button">
        <div class="button">
          <a href="mailto:yangzhuohan1996@gmail.com">Email me</a>
        </div>
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
  computed: {},
  ready() {},
  attached() {},
  methods: {},
  components: {
  }
};

</script>

<style lang="scss" scoped>
@import '../../../assets/sass/common.scss';
@import '../../../assets/sass/variable.scss';

.contact-info {
  background-color: $choco;
  .i-hear-from {
    text-align: center;
    color: $paper;
    opacity: .8;
    font-family: 'GT-Walsheim';
    font-size: 30px;
    letter-spacing: 2px;
    margin-top: 100px;
    margin-bottom: 20px;
  }

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

  .mail-button {
    margin-bottom: 50px;
    display: flex;
    flex-direction: row;
    justify-content: center;

    .button {
      cursor: pointer;
      opacity: .8;
      margin: 40px 0px;
      padding: 5px 25px;
      border: 1px solid $paper;
      border-radius: 30px;
      transition: all .5s ease;
      a {
        color: $paper;
      }

      &:hover {
        background-color: $paper;
        a {
          color: $choco;
        }
      }
    }
  }
}
  
</style>