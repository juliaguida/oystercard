# Writing tests without a testing library

## What is a test?

A test does three things:

1. Sets some conditions up.
1. Checks that some things are true.
1. Outputs the test result to the user.

## What are testing libraries for?

A testing library supplies:

1. Assertion functions that help check that specific things are true.
1. A standard way to describe what a test or group of tests is doing.
1. Mocking functions to help isolate the part of the code being tested.
1. A user-friendly way for the user to see all test results.
1. A way to organise tests.
1. An easy way to run lots of tests.

## Writing tests without a testing library

All of these things are either optional for test code, or can be easily achieved with ad hoc code.  For example, here is some code that tests a circle object:

```js
// circle-tests.js
function testCircleRadiusDefaultsTo10() {
  const circle = new Circle();

  if (circle.radius !== 10) {
    throw new Error("Circle size is not 10");
  }
};

testCircleRadiusDefaultsTo10();
```

Here is the code for the implementation of `Circle`:

```js
// circle.js
class Circle {
  constructor() {
    this.radius = 10;
  }
}
```

To run these tests:

* Create an HTML page.
* Create the `circle.js` file.
* Use a script tag to include `circle.js` in `index.html`.
* Create the `circle-tests.js` file.
* Use a script tag to include `circle-tests.js` in `index.html`.
* Open the HTML page in a browser.

This code is pretty ugly.

* It takes three lines of code to assert one thing.
* A custom error description must be supplied.
* The description of the test has to be expressed as a function name.
* The test function is instantiated as a first step and called as a second step.

But it works.

## Writing nicer tests without a testing library

It's fine to potter along for quite a while writing test code in this style.  It would be possible to make a whole file of test functions like this and have an app that is just as robust and well-tested as an app tested with a testing library.

But the eye-watering agony could be reduced by abstracting some of the ugliness.  Here are a few lines that can be used to greatly improve the test code:

```js
// assert.js

const assert = {
  isTrue: function(assertionToCheck) {
    if (!assertionToCheck) {
      throw new Error("Assertion failed: " + assertionToCheck + " is not truthy");
    }
  };
};
```

Now our test becomes:

```js
// circle-tests.js

function testCircleRadiusDefaultsTo10() {
  const circle = new Circle();
  assert.isTrue(circle.radius === 10);
};

testCircleRadiusDefaultsTo10();
```

Ten or twenty more lines of testing library code would supply 80% of the standard `describe`, `it`, mocking and asserting library deliciousness.

What would you abstract next?

## Extracting a testing library

If you want, you can go all the way and make your test helper code into its own testing library.

Here are some things to consider:

* How can you move your test helper code into its own repo?

* How can you allow your notes app to access your test library repo?

* How can you write tests for your test library? (!)

* What interface should your test library have?

* How will you publish your library? npm?

## Go further

Once you have made some progress on you testing framework, [here's a video](https://www.youtube.com/watch?v=HyGnxxKJmeQ) you can watch that could give you an idea of how to implement an interface closer to what jasmine has, for example.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/writing_tests_without_a_testing_library.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/writing_tests_without_a_testing_library.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/writing_tests_without_a_testing_library.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/writing_tests_without_a_testing_library.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/writing_tests_without_a_testing_library.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
