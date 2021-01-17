# Single Responsibility Principle, anyone?

[Back to the Challenge Map](README.md)

We just implemented a User Story almost entirely from the Model layer. Before we proceed to the next one, let's make sure our Model is following OOD best practices.

At current, our `Player` model is responsible for two main things: managing its hit points, and attacking other players.

In this challenge, you will extract a model capable of performing attacks from the `Player` model, without breaking any feature tests.

### Learning Objectives covered
- Refactor the model layer

### To complete this challenge, you will need to:

- [ ] Extract the `#attack` method (and associated tests) into a `Game` class
- [ ] Refactor your controller so it uses a `Game` instance to make an attack.

### Resources

- [Sandi Metz' Rules for Developers (Thoughtbot)](https://robots.thoughtbot.com/sandi-metz-rules-for-developers)
- [Separation of Concerns](https://en.wikipedia.org/wiki/Separation_of_concerns)

### [Walkthrough](walkthroughs/srp_anyone.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/srp_anyone.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/srp_anyone.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/srp_anyone.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/srp_anyone.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/srp_anyone.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
