# Walkthrough – Getting Started with Battle

[Back to the Challenge](../getting_started_with_battle.md)

Our project directory should look something like this:

```
.
└── battle
```

Let's add a Gemfile for our dependencies using `bundle init`.

> Including a Gemfile means any future developer starting our project can install all project dependencies by running `bundle`.

```
.
└── battle
    └── Gemfile
```

Inside our Gemfile, let's add the dependencies:

```ruby
# In Gemfile
source 'https://rubygems.org'

gem 'rspec'
gem 'sinatra'
```

And use `bundle` to install those dependencies to our project (generating a Gemfile.lock).

We create an `app.rb` file in the root of our project.  Inside our `app.rb`, we have an application `Battle` set up to use Sinatra's [Modular Style](http://www.sinatrarb.com/intro.html#Sinatra::Base%20-%20Middleware,%20Libraries,%20and%20Modular%20Apps):

```ruby
# in app.rb

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
```

> Sinatra's Modular Style allows you to use a slimmed-down version of Sinatra that is more modular and portable.

In the root of our project, we create a `config.ru` file that we can use to run our app:

```
require_relative "./app"
run Battle
```

We run it with `rackup`.  Our console outputs a port and we use that to create a URL like `localhost:XXXX`.  We check we can visit that URL in our web browser and see `Hello Battle!`.

We use `rspec --init` to create a `spec/spec_helper.rb` and `.rspec` file.  This gives us a skeletal rspec setup.

We run our tests with `rspec` and see `0 examples, 0 failures`.

Our project directory now looks like this:

```
.
└── battle
    ├── spec
    │   └── spec_helper.rb
    ├── .rspec
    ├── Gemfile
    ├── Gemfile.lock
    ├── app.rb
    └── config.ru
```

OK, we're done with this challenge. Next up, we'll implement our first User Story.

[Forward to the Challenge Map](../README.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/getting_started_with_battle.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/getting_started_with_battle.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/getting_started_with_battle.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/getting_started_with_battle.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=intro_to_the_web/walkthroughs/getting_started_with_battle.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
