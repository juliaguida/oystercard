# Sinatra: Views

[Back to the Challenge Map](README.md)

Our web application now responds to client requests across a range of paths. For some of them, our web application returns complex cat-based HTML. Miaow.

However, things are starting to get messy. Web pages usually have hundreds - or thousands - of lines of HTML. It's inefficient to store them all in the same place as we define our routes.

In this challenge, you will use **views** to separate the Ruby and HTML code. This is the first of several steps you will take when developing a web application to encourage a clean **separation of concerns**.

> In our case, `app.rb` will be for _routing_ (or _controlling_) concerns, and we will use another file for our _presentation_ (or _view_) concerns.

### Learning Objectives Covered

By learning how to use views in your Sinatra application, you are working towards:

* Test-drive a simple Sinatra app

### To complete this challenge, you will need to:

- [ ] Create a directory called `views`, within the same directory as your `app.rb` file
- [ ] Create an `index.erb` file (a 'view file') within the `views` directory
- [ ] Move the HTML string you wrote in `app.rb` ('routing file') into the view file you just created
- [ ] Replace the HTML string in the routing file with the statement `erb(:index)`
- [ ] Restart your server, and visit your previously-working route
- [ ] Explain to your pair partner what you see.
- [ ] Explain what is meant by 'separation of concerns' and why it's an important practice

### Resources

- [Sinatra Main Intro Documentation](http://www.sinatrarb.com/intro.html)
- [Sinatra Views](http://www.sinatrarb.com/intro.html#Views%20/%20Templates)

### [Walkthrough](walkthroughs/sinatra_views.md)

[Checkpoint: HTTP Part II](checkpoint_http_ii.md) - [Next challenge](sinatra_erb.md)
<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/sinatra_views.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/sinatra_views.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/sinatra_views.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/sinatra_views.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/sinatra_views.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
