# JavaScript conventions

Each language has its own unique set of coding conventions. Ignoring conventions won't stop your code working, but it may make your code less easy to understand, and different developers using different conventions can lead to a messy codebase.

Some conventions are different between JavaScript and Ruby, while others will be familiar.

## Variable naming

When naming variables in JS, we tend to use 'camel casing' rather than 'snake casing', as in Ruby. That means for variable names that are more than one word, we mark the start of a new word with a capital letter, instead of preceding it with an underscore. For example

~~~ruby
days_until_my_birthday = 272
~~~

becomes:

~~~javascript
let daysUntilMyBirthday = 272;
~~~

## Method naming

Likewise, we'll use camel casing for method names

~~~javascript
class Thermostat {
  increaseTemperature(){
    // ...
  }
}
~~~

We can't use question marks in method names, like in Ruby:

~~~ruby
class Dog
  def purebreed?
    true
  end
end
~~~

So we'll often prefix methods that return boolean values with `is`:

~~~javascript
class Dog {
  isPurebreed() {
    return true;
  }
}
~~~

JavaScript doesn't have the same concept of `private` methods that we have in Ruby. By convention, methods that are meant to be internal to a class are prefixed by an underscore.

~~~ruby
class Banana
  private

  def my_private_method
    # ...
  end
end
~~~

becomes

~~~javascript
class Banana {
  _myPrivateMethod() {
    // ...
  }
}
~~~

## Constants

As we saw above, you can use `let` to define variables that you expect to change.

You can use `const` to define variables you don't expect to change.

~~~javascript
const theMeaningOfLife = 42
theMeaningOfLife = 21 // error !

let theMeaningOfLife = 42
theMeaningOfLife = 21 // works !
~~~

In Ruby, you will have used constants for particularly important 'magic numbers',
like an API key or the capacity of an airport. In Javascript, the convention is
usually to use `const` in preference to `let` wherever possible. For example:

~~~javascript
// For a magic number, const is of course used.
// However, to signal its importance, the value is named in SCREAMING_SNAKE_CASE
const SECONDS_IN_WEEK = 60 * 60 * 24 * 7;

function weeksBetweenDates(date1, date2) {
  // We use const here because the value won't need to change.
  const secondsBetweenDates = date2 - date1;
  return secondsBetweenDates/SECONDS_IN_WEEK;
}
~~~

The thinking behind this style is that tying down your values as constants
wherever possible will prevent accidental errors later on.

To get yourself into this habit, consider restricting yourself to `const` and
then only changing it to `let` when you get an error.

## Resources

* [Airbnb's JS style guide](https://github.com/airbnb/javascript) - (very in-depth)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_conventions.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_conventions.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_conventions.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_conventions.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_conventions.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
