# Raising Exceptions

[Back to the Challenge Map](0_challenge_map.md)

In the last challenge, we allowed `DockingStation` instances to `dock` a `Bike` instance, and to read from an instance variable to return a docked bike.

You should now understand that your methods can return other objects: in this case, `#release_bike` returns a `Bike.new`.

This seems like a problem. Our Docking Station actually instantiates a _new_ `Bike` instance each time we want one released:

```ruby
def release_bike
  Bike.new
end
```

So we've built a Docking Station that gives us infinite bikes.

Sometimes, there will be reasons that you would want something NOT to happen. For that, you need a way to stop the execution of your program and give the user a meaningful message.

Here is a User Story for the next feature to implement:

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

In this challenge, you will learn how to test and raise exceptions.

### Learning Objectives covered
- Write RSpec tests that `expect` errors
- Use `fail` or `raise` to raise an error
- Use a 'guard condition'

### To complete this challenge, you will need to:

- [ ] Use `{}` and `raise_error` syntax in your RSpec unit test to test exception raising
- [ ] Use the `fail` or `raise` keyword to raise an exception in your code (not your tests)
- [ ] Make the test pass by raising an exception
- [ ] Explain why you use curly braces in the RSpec error handling syntax to your partner
- [ ] Play with your app in IRB to confirm that it works as expected

### Hints

<details><summary>CLICK ME</summary>
  <li>We want to raise an error when a user tries to release a bike from an empty DockingStation.  What would an 'empty' DockingStation object look like? Presumably one where the instance variable you set up in the last step doesn't yet contain a bike.</li>
  <li>You know the drill by now - let's write a unit test.  RSpec provides us with a raise_error method for just this sort of situation, but it's usage is a little tricky.  Check the documentation below to see how it works.</li>
  <li>The last step is to make this test past.  You'll need to do some research on how to raise an error in Ruby.</li>
</details>

### Resources

- [RSpec errors documentation (Github)](https://github.com/rspec/rspec-expectations#expecting-errors)
- [Relish errors documentation](http://www.relishapp.com/rspec/rspec-expectations/v/3-3/docs/built-in-matchers/raise-error-matcher)

[Previous Challenge](8_using_instance_variables.md) | [Next Challenge](10_limiting_capacity.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_advanced/9_raising_exceptions.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_advanced/9_raising_exceptions.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_advanced/9_raising_exceptions.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_advanced/9_raising_exceptions.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_advanced/9_raising_exceptions.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
