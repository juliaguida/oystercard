# Walkthrough - JavaScript basics

[Back to the Challenge](../javascript_basics.md)

Let's write some JavaScript!

Fire up Chrome (you can do this in Safari or Firefox, but the Chrome DevTools console is extremely well designed and user friendly). Next, find the DevTools console - the ninja way (and therefore the best way) is to use a keyboard shortcut - `Cmd`-`Opt`-`j` on a Mac, and `Ctrl`-`Shift`-`j` elsewhere. Otherwise, you can right-click anywhere on the page and select "Inspect element" (`Cmd`-`Opt`-`i` or `Ctrl`-`Shift`-`i` if you prefer shortcuts!) to show the DevTools, and then click on "Console".

First things first: `console.log()` is the equivalent of `puts`, `print` or `p` in Ruby, and you will probably use it a lot to debug your code. Chrome DevTools is really good at giving you as much information about objects and functions that you log to the console - always remember the debugging mantra: **"if in doubt, log it out"**

Hello world is relatively simple: `console.log('Hello world!')`.

To create a `Greeting` object, we use the `class` keyword:

```javascript
class Greeting {

}
```

To define a method:

```javascript

class Greeting {
   hello(person) {
     return 'Hello, ' + person + '!';
   }
}
```

And to use it:

```javascript
const greeting = new Greeting();
greeting.hello('Maker'); // 'Hello, Maker!'

/*
Note:
- Single line comments in JavaScript use '//'
- Multiline comments look like this comment
But, you should almost never need these as your code should explain itself! =)
*/
```

For a standalone function that takes no arguments:

```javascript
function hiTimmy() {
  return 'Hi, Timmy!';
}
```

And to use it:

```javascript
hiTimmy(); // 'Hi, Timmy!'
```


For a standalone function that takes arguments:

```javascript
function hi(person) {
  return 'Hi, ' + person + '!';
}
```

And to use it:

```javascript
hi('Jenny'); // 'Hi, Jenny!'
```

There's also a shorter syntax for declaring functions, called "arrow functions". The following code does exactly the same thing as the previous one - it creates a function taking one argument `person`, returning the string `'Hi, ' + person + '!'`, and stores this function in a value named `hi` (which is the same to say the function is named `hi`).

```javascript
const hi = (person) => {
  return 'Hi, ' + person + '!'
}

// and since we only need to return a value (and not do anything else), this is even shorter:
const hi = (person) => 'Hi, ' + person + '!'
```

While you are here, take a minute with your pair partner to take a glance at the different parts of Chrome's DevTools, especially the "Elements" tab - you will be using these a lot in the future.

### Experimenting with basic JavaScript language features

#### Strings and numbers

Strings are stringy, and behave most of the time.

As a general rule, don't mix numbers and strings (this is a good idea in general anyway), because strange things happen.

```javascript
'1' + 1 // '11'
'1' - 1 // 0
```

```javascript
let age = 25
// getting older
age = age + 1

console.log("My age is " + age) // you can use + to concatenate strings together though, just like in Ruby
```

Another thing to be aware of is `NaN`, which means "not a number", as well as JavaScript's [approach to equality](https://dorey.github.io/JavaScript-Equality-Table/) (`==` and `===`) - tl;dr, just use `===` unless you have good reason not to.

#### Arrays

Arrays are very much like their Ruby counterparts:

```javascript
const array = [1, 2, 3, 4]
array[0] // 1
array.length // 4
array.pop() // 4
array // [1, 2, 3]
array.push(5) // array is now [1, 2, 3, 5]
```

#### Objects

Most things in JavaScript (other than [primitives](https://developer.mozilla.org/en-US/docs/Glossary/Primitive)) are objects. Objects are used like hashes in Ruby:

```javascript
const myObject = {} // you can make empty objects
const myOtherObject = {
                      some: 'stuff',
                      goes: 'in',
                      here: 123,
                      arrays: ['woah', 'check', 'it'],
                      nestedObject: {another: 'object'},
                      functionsToo: function(foo) { return foo }
                    }
// or objects with stuff in them - check out the fact you can put functions in, too

myOtherObject['some'] // 'stuff'
myOtherObject['here'] // 123

// so far, so Ruby. But you can also access stuff through "dot notation" - more like a normal object in Ruby

myOtherObject.arrays // ['woah', 'check', 'it']
myOtherObject.nestedObject.another // 'object'

// and, you can also get to functions. To call them, however, you have to use ()

myOtherObject.functionsToo // function(foo) { return foo }
myOtherObject.functionsToo('hi!') // 'hi!'
```

For further practice, you can check out the [Javascripting workshopper](https://github.com/sethvincent/javascripting).

Once you feel comfortable with JavaScript and using the browser's JavaScript console to play with code ideas, let's start writing some TDD JavaScript.

#### Const or let?

You might have noticed that we're using two different ways of declaring variables: the `const` keyword and the `let` keyword. What's the difference? Well, with `const`, you cannot reassign a new value to the variable. You can modify it (change the elements of an array, the properties of an object...), but you cannot put some new value in the variable. This wouldn't work, for example:
```javascript
const name = 'Jane'
name = 'Bob' // error!
```

If we ever need to reassign a new value to a variable that's already declared, we'll then need to use `let` to declare the variable in the first place. This would work:
```javascript
let name = 'Jane'
name = 'Bob' // all good
```

Which one to use then? In general, prefer using `const` when you don't have to put another value in the variable later. Otherwise, use `let`.

You might also see other examples using `var` to declare variable. This is an older syntax of Javascript, which tends to be deprecated now, so prefer using `const` and `let` instead.

[Forward to the Challenge Map](../README.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/javascript_basics.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/javascript_basics.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/javascript_basics.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/javascript_basics.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/javascript_basics.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
