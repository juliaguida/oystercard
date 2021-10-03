# Killing the Global Variable

Let's look at removing the global variable `$game` from our code altogether. In the long term, you'd use a database but here we explore an alternative which brings you into contact with some interesting features of the Ruby programming language.

### Learning Objectives Covered

By implementing this user story, you are working towards:

* Test-drive a simple Sinatra app
* Write feature tests using Capybara

You are also removing a 'code smell' from your application.

### To complete this challenge, you will need to:

- [ ] Discuss the problem that the global variable(s) solved.
- [ ] Investigate and discuss why global variables are evil.
- [ ] Implement a *class method* on `Game` using a *class instance variable* to store an instance of `Game`.
- [ ] Investigate the difference between a *class _instance_ variable* and a *class variable*.  In general we avoid _class variables_ - why?
- [ ] Investigate the Singleton pattern and compare it to this approach.  What are the similarities/ differences?
- [ ] Investigate Sinatra filters.
- [ ] Implement a Sinatra filter to DRY out your route handlers.

### Resources

- [Class Variables and Methods](http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/113-class-variables)
- [Singleton Pattern](https://en.wikipedia.org/wiki/Singleton_pattern)
- [Sinatra Filters](http://www.sinatrarb.com/intro.html#Filters)

### [Walkthrough](walkthroughs/killing_the_global_variable.md)

Congratulations, you've made it to the end of the Battle App!!  If you're ready for more, take a look at the extension challenges below.

[Previous challenge](losing_and_winning.md) – [Extension challenges](post_challenges/post_challenge.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/killing_the_global_variable.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/killing_the_global_variable.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/killing_the_global_variable.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/killing_the_global_variable.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/killing_the_global_variable.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
