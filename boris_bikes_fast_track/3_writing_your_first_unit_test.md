# Writing Your First Unit Test

[Back to the Challenge Map](0_challenge_map.md)

In this challenge, you will initialise a testing framework, **RSpec**, and plan your DockingStation with a **Unit Test**.

### Learning Objectives covered
- Define RSpec as a testing framework
- Create a spec file
- Describe an Object using a specification
- Set up a Unit Test

### Challenge setup

Here is the User Story you converted into a Domain Model:

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

Here is a functional representation of that story:

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation | release_bike

### To complete this challenge, you will need to:

- [ ] Initialise RSpec within your project
- [ ] Create a new spec file for your DockingStation object
- [ ] Set up the spec file to `describe` a DockingStation
- [ ] Run RSpec from the Command Line
- [ ] Explain to your pair partner the difference between this error and the error you saw before.

### Hints

<details><summary>CLICK ME</summary>
  <li>Your first instinct might be to just create a DockingStation class but remember that we're learning to do TDD - we never write any code without first writing a failing unit test.</li>
  <li>First you'll need to set up RSpec - a testing framework for Ruby.  Check out the resources below for more information on how to do this.</li>
  <li>Once RSpec is up and running, you'll need to create a spec file for your DockingStation tests.  RSpec expects this file to follow certain syntactic and naming conventions.  Again, check the links below for more information</li>
  <li>You'll know that everything is working when you see an error message similar to the one in the last step.</li>
</details>

### Resources
- [RSpec wiki](https://github.com/rspec/rspec/wiki)
- [Setting up RSpec (video)](https://www.youtube.com/watch?v=rRDQKAAGw6M)
- [RSpec basics and Spec files](https://semaphoreci.com/community/tutorials/getting-started-with-rspec) (start from 'RSpec basics' partway down the page)

[Previous Challenge](2_working_with_user_stories.md) | [Next Challenge](4_passing_your_first_unit_test.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_fast_track/3_writing_your_first_unit_test.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_fast_track/3_writing_your_first_unit_test.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_fast_track/3_writing_your_first_unit_test.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_fast_track/3_writing_your_first_unit_test.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=boris_bikes_fast_track/3_writing_your_first_unit_test.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
