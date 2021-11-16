# Getting Started with Battle

[Back to the Challenge Map](README.md)

Now that you have a basic understanding of HTTP, response-request mechanisms, Sinatra, and Capybara we are going to construct a project that uses these technologies.

The project is called 'Battle'. Here is a mockup of how it might look towards the end:

![Battle final mockup](./images/battle_final_mockup.png)

> We encourage you to make this project your own. Although the walkthroughs will prescribe a 'best path', you can name things and lay out your views however fits your needs. By using the walkthroughs as 'analogies' to your own project, you will learn to interpret guidance and apply it in a different context.

In this challenge, you will set up a basic project structure with Sinatra, RSpec, and Capybara ready to go.

### Learning Objectives covered
- Set up a web project with Testing frameworks

### Challenge setup

Here are the complete User Stories for this project. They begin with some 'Basic' User Stories:

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

And some Advanced 'extension' User Stories:

```
As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

As a Player,
So I can better enjoy a game of Battle,
I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface
```

### About Sinatra's Modular style

So far, in this challenge, we've used Sinatra's classic style and wrote the route definitions in the top-level scope. I.e. Not inside a class.

There is a slightly more complex way to write Sinatra applications, which we'll use from now on, called the "modular" style. The main difference is that the file `app.rb` defines a class, and we define routes inside that class. Below is an example of an empty "modular" Sinatra application, defining no routes:

```ruby
require 'sinatra/base'
require 'sinatra/reloader'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
```

We can run this app using `ruby app.rb`, as we did until now for the "classic" style. But a better way is also to use a gem called `rackup` — it's a more standard way to run Ruby web applications, and we also don't have to specify the file name every time. When using `rackup`, we need to add one more file to our project, called `config.ru`:

```ruby
# config.ru
require './app'
run MyApp
```

Note that the class name given to `run` (on the second line) needs to be the name of the application class we defined in `app.rb`. After creating this new file, we're able to run our Sinatra app with `rackup`, running the following inside the project directory:

```bash
gem install rackup
rackup 
```

### To complete this challenge, you will need to:

- [ ] Start a new project directory (you could call it `Battle`)
- [ ] Add dependencies for `rspec` and `sinatra` using a Gemfile, and install using `bundle`.
- [ ] Add an `app.rb` file at the root.
- [ ] Set up a Sinatra application class called `Battle` inside `app.rb` using Sinatra's Modular Style.
- [ ] Declare a route inside this new class for `GET /`, responding with the string `Hello Battle!`.
- [ ] Add a `config.ru` file.  Check you can use it to run your app.
- [ ] Check you can visit your app's homepage in a web browser and see `Hello Battle!`.
- [ ] Use the `rspec` `init` command to initialise an RSpec skeleton directory and file structure.
- [ ] Check you can run `rspec` and see `0 examples, 0 failures`.

### Resources

- [Sinatra Modular Style](http://sinatrarb.com/intro.html#:~:text=Serving%20a%20Modular%20Application)
- [RSpec `init`](https://relishapp.com/rspec/rspec-core/v/2-8/docs/command-line/init-option)

### [Walkthrough](walkthroughs/getting_started_with_battle.md)

[Previous challenge](testing_with_capybara.md) - [Next challenge](getting_test_infrastructure_set_up.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/getting_started_with_battle.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/getting_started_with_battle.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/getting_started_with_battle.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/getting_started_with_battle.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/getting_started_with_battle.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
