# Initialisation defaults

[Back to the Challenge Map](0_challenge_map.md)

Now we have a constant, `DEFAULT_CAPACITY`, that forces all `DockingStation` instances to accept a maximum of 20 `Bike` instances, in an array stored as an instance variable `@bikes`. Nice!

Unfortunately for us, here comes another email from the client: they want system maintainers to be able to set variable capacities on new `DockingStation` instances. This should default to `20` if no capacity is supplied.

Here's a User Story for that:

```
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```

In this challenge, you will modify your `intialize` function to accept a `capacity` argument with a **default value** set to the `DEFAULT_CAPACITY`.

### Learning Objectives covered
- Set an initial attribute value using `initialize`
- Set a default initialisation value

### To complete this challenge, you will need to:

- [ ] Write a unit test for the ability of a user to set a `@capacity` instance variable when `DockingStation.new` is called.
- [ ] Implement the functionality in your code.
- [ ] Write a unit test that ensures a default capacity of `20` is set when no parameters are passed to `DockingStation.new`
- [ ] Use a default argument value within the `initialize` method to make this test pass.
- [ ] Play with your app in IRB to make sure it works as expected

### Hints

<details><summary>CLICK ME</summary>
  <li>We want to be able to set the capacity for a DockingStation by passing a number as an argument at initialisation.  You should be able to TDD this behaviour without too much trouble.</li>
  <li>Once this works, we want to ensure that if the user doesn't provide an argument then the capacity defaults to 20.  Ruby provides us with a handy bit of syntax to deal with situations just like this - check out the linked document below.</li>
</details>

### Resources

- [Method arguments in Ruby](http://www.skorks.com/2009/08/method-arguments-in-ruby/)

[Previous Challenge](13_removing_magic_numbers.md) | [Next Challenge](15_dealing_with_broken_bikes.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/14_initialization_defaults.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/14_initialization_defaults.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/14_initialization_defaults.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/14_initialization_defaults.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/14_initialization_defaults.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
