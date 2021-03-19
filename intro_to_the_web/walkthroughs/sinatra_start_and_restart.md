# Walkthrough – Sinatra: Start and restart

[Back to the Challenge](../sinatra_start_and_restart.md)

If we wanted to have another page at `http://localhost:4567/secret`, then we'd do the following:

````ruby
# inside app.rb
require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end
````
But wait! Having done this in your Sinatra application, visiting `http://localhost:4567/secret` in a browser gives you this page:

![alt text](../images/second_sinatra_route.png)

An error! Another good time to commit your code, push it to Github (:pill: [Version Control with Git](git.md)), and switch Driver/Navigator Roles&nbsp;:twisted_rightwards_arrows:

### Reload your code

What's happening here? Nothing bad: Sinatra is telling you that it doesn't know what '/secret' is all about, despite you having written this in your app.

The problem: we haven't rebooted the server after making our changes. The running server has a `/` route, but no `/secret` one.

To stop the server, head to the terminal tab in which the server is running and hit `Ctrl-C`. Then restart the server just like you started it in the first place:

`$ ruby app.rb`

Head back to `http://localhost:4567/secret`: it now works! But restarting the server manually every time we change the code is going to get very painful.

## Automatic code reloading

What we've been doing is restarting our server every time we made a change to the files because Sinatra needed to reload them. There's a way to reload the files without restarting the entire process.

Firstly, install a gem called `sinatra-contrib` within this project. You already know how to require and install gems. Next, ensure you begin your file like this:

```
require "sinatra"
require "sinatra/reloader" if development?
```

The `if development?` ensures that the auto-reloading only happens in development mode. This is important for real projects, because auto-reloading makes the server slower.

You can now make changes to your `app.rb` file and see the changes with a simple browser refresh.  Try adjusting the strings in the `do ... end` blocks and reload the browser.

Webpages that return strings are kind of boring. Next up, let's add some [HTML](pills/html.md) to the mix.

[Forward to the Challenge Map](../README.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/sinatra_start_and_restart.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/sinatra_start_and_restart.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/sinatra_start_and_restart.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/sinatra_start_and_restart.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/sinatra_start_and_restart.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
