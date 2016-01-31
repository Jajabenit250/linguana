var React = require('react'),
    LessonStore = require('../../stores/lesson_store'),
    LessonIndexItem = require('./lesson_index_item'),
    LessonsApiUtil = require('../../util/lessons_api_util');

var LessonIndex = React.createClass({
  getInitialState: function () {
    var lessons = LessonStore.findBySkill(this.props.skillId);

    return { lessons: lessons };
  },

  _onChange: function () {
    this.setState({ lessons: LessonStore.all() });
  },

  componentDidMount: function () {
    this.lessonListener = LessonStore.addListener(this._onChange);
    LessonsApiUtil.fetchLessons(this.props.skillId);
  },

  componentWillUnmount: function () {
    this.lessonListener.remove();
  },

  render: function () {
    var lessons = this.state.lessons;
    if (typeof lessons === "undefined") {
      return <div />;
    }

    var lessonKeys = Object.keys(this.state.lessons);

    lessons = lessonKeys.map(function (key, idx) {
      var lesson = lessons[key];
      return <LessonIndexItem key={idx} lesson={lesson} />;
    });

    return(
      <div className="lesson-index">
        <ul className="lesson-list group">
          {lessons}
        </ul>
      </div>
    );
  }
});

module.exports = LessonIndex;
