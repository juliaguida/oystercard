# TDD a model for a note

[Back to the Challenge Map](00_challenge_track.md)

So far in the course, you've mostly built systems outside in.  You've written a feature test. You've written unit tests to match the feature test failure.  You've written code that makes the unit tests pass.  You've written code that makes the feature test pass.

For this app, you won't take that approach.  You'll focus on unit tests.  You'll write tests for a unit (e.g. the object that represents a note). Then you'll implement the unit.  You'll keep on going in this fashion all the way through building your app.  There's a lot of new material in this week's curriculum.  Focusing on unit tests will help you methodically write solid, expandable code.

### Learning objectives covered

- Write unit tests without using a testing library.
- Use javascript classes.
- Use the module pattern to wrap your code.

### To complete this challenge, you will need to:

- [ ] TDD a note object that fulfills the specification below.

### Note model specification

- Code is in a file called `note-model.js`.
- Uses the a javascript class to define a note model object that can be instantiated.
- Takes the text of a note upon instantiation e.g. `My favourite language is JavaScript`.
- Stores the text in a `text` property on the note.
- Has a method that will return the note text.

### Resources

- [Google JavaScript Style Guide - File Naming](https://google.github.io/styleguide/jsguide.html#file-name)
- :pill: [Writing tests without a testing library](https://github.com/makersacademy/course/blob/master/pills/writing_tests_without_a_testing_library.md)
- :pill: [Javascript Classes](https://github.com/makersacademy/course/blob/master/pills/js_classes.md)
- :pill: [JavaScript module pattern](https://github.com/makersacademy/course/blob/master/pills/javascript_module_pattern.md)


![Tracking pixel](https://githubanalytics.herokuapp.com/course/further_javascript/01_note_model.md)
