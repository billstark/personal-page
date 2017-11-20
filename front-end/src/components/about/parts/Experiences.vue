<template lang="html">
  <div class="experiences-info full-height-container">
    <div class="experiences-info-container container">
      <div class="title">
        <h4 class="i-worked">I WORKED</h4>
      </div>
      <div class="summary">
        <p>
          I have six-months of working experience as a web application software engineer. Most of my work 
          includes both front-end and backend development.
        </p>
      </div>
      <div class="experience-item">
        <div class="company-logo">
          <img src="../../../assets/img/cvwo.png" alt="">
        </div>
        <div class="description">
          <h3>May 2016 - July 2016</h3>
          <p>
            Took part in Computing for Voluntary Welfare Organisations during the first summer vacation in the university. Participated in the whole process of developing a website for Lions Befrienders, particularly developed info/referral record and home visit record, implemented typeahead, file attachement and version control. During the process, I have got familiar with the Model-View-Controller architectural pattern as well as the Ruby on Rails framework. In addition, I have learnt some ideas of code maintenance and database design. <br>
          </p>
          <a href="http://www.comp.nus.edu.sg/~vwo/projects/2016-lbsa.html" target="_blank">Read more</a>
        </div>
      </div>
      <div class="experience-item">
        <div class="company-logo">
          <img src="../../../assets/img/visenze.png" alt="">
        </div>
        <div class="description">
          <h3>May 2017 - July 2017</h3>
          <p>
            Worked as a full-stack web developer at ViSenze for 3 months. During the internship I got familiar with AngularJS, Python, Java Spring and Jenkins. I learnt the basic development cycle of small projects. I helped with backend maintainess, continuous integration, UI design & implementation and some of the user experience testing. I was well integrated into the working environment and really enjoyed the 3-month internship experience.
          </p>
          <a href="http://www.weardex.com" target="_blank">Show case</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script >

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

<style lang="scss">
@import '../../../assets/sass/common.scss';
@import '../../../assets/sass/variable.scss';

.experiences-info {
  background-color: $paper;
  .i-worked {
    text-align: center;
    margin-top: 100px;
    margin-bottom: 20px;
    font-family: 'GT-Walsheim';
    font-size: 30px;
    letter-spacing: 2px;
  }

  .summary {
    display: flex;
    flex-direction: row;
    justify-content: center;
    font-weight: 300;
    opacity: .6;
    p {
      text-align: center;
      width: 600px;
      font-size: 14px;
    }
  }

  .experience-item {
    display: flex;
    flex-direction: row;
    .company-logo {
      img {
        width: 200px;
      }
    }

    .description {
      margin-left: 20px;
      h3 {
        font-weight: 300;
        margin-top: 45px;
      }

      p {
        font-size: 13px;
        opacity: .6;
      }
      a {
        border: 1px solid $oxblood;
        padding: 2px 8px;
        color: $oxblood;
        opacity: 1;
        font-size: 13px;
        font-weight: 400;
        transition: all .5s ease;
        &:hover {
          background-color: $oxblood;
          color: $paper;
        }
      }
    }
  }
}
  
</style>