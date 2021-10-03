# POST/`redirect`/GET pattern

[Back to the Challenge Map](README.md)

We've passed our first User Story, and users can enter their names. Before we move on, we should refactor our code to avoid rendering a view directly from a POST route.

In this challenge, you will use a POST-redirect loop to avoid rendering a view directly from a POST request. You will also use the `session` to store the user-submitted names between requests.

### Challenge Setup

Some of our routing logic looks like this:

```ruby
# in app.rb

post '/names' do
  @player_1 = params[:player_1_name]
  @player_2 = params[:player_2_name]
  erb :play
end
```

First, we are extracting parameters to state. Then, we are rendering a view. But a POST request is not intended for both of these purposes. We should use a GET request to render our view.

### Learning Objectives Covered

Using the post-redirect-get pattern will help you build user-friendly web applications. So, this is another _best practice_ focused challenge.

### To complete this challenge, you will need to:

- [ ] Use `enable` to enable the `session` in Sinatra
- [ ] In the `post '/names'` route, store the player names in the `session`
- [ ] Write a `get '/play` route that renders the `play.erb` view you already wrote
- [ ] In the `get '/play'` route, extract the instance variables required by the view from the `session`
- [ ] Remove the `erb :play` expression from the `post '/names'` route, and replace it with a `redirect` to the `'/play'` route
- [ ] Ensure your `enter_names_spec` feature test still passes.

### Resources

- [Sinatra `session`s](http://www.sinatrarb.com/intro.html#Using%20Sessions)
- [Post/Redirect/Get pattern](https://en.wikipedia.org/wiki/Post/Redirect/Get)

### [Walkthrough](walkthroughs/post_redirect_get_pattern.md)

[Previous challenge](entering_players.md) - [Next challenge](viewing_hit_points.md)
<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/post_redirect_get_pattern.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/post_redirect_get_pattern.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/post_redirect_get_pattern.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/post_redirect_get_pattern.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/post_redirect_get_pattern.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
