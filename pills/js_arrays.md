# JavaScript arrays

Arrays in JavaScript are very similar to arrays in Ruby. We create them in the same manner:

~~~javascript
let animals = ['cat', 'dog', 'horse'];
~~~

We can also iterate over them using a method - `forEach` - which is very similar to Ruby's `each` method:

~~~javascript
animals.forEach(function(animal) {
  console.log('Old McDonald had a ' + animal);
})
~~~

And we can access them using a numerical index (starting at 0) just as in Ruby:

~~~javascript
animals[0]; //=> 'cat'
animals[2]; //=> 'horse'
~~~

## Appending to arrays

JavaScript doesn't have the `<<` (shovel) operator, so we use the `.push` method:

~~~javascript
animals.push('snake');
animals; //=> ['cat', 'dog', 'horse', 'snake']
~~~

## Checking presence of an element in an array

In Ruby we can check if an element is included in an array using the `.include?` method:

~~~ruby
if animals.include?('cow')
  puts 'Mooo'
end
~~~

In JavaScript, you can use the [`.includes`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes) method:

~~~javascript
if(animals.includes('cow')) {
  console.log('Mooo');
}
~~~

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_arrays.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_arrays.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_arrays.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_arrays.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/js_arrays.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
