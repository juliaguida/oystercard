# Walkthrough – Getting test infrastructure set up

[Back to the Challenge](../getting_test_infrastructure_set_up.md)

Inside our Gemfile, let's add the dependency

```ruby
# In Gemfile
gem 'capybara'
```

And use `bundle` to install that dependency to our project (generating a Gemfile.lock).

We set up our spec_helper.rb with the things it needs to prepare Capybara and to get Capybara to test our app.

```ruby
# add this to spec/spec_helper.rb

ENV['RACK_ENV'] = 'test'

# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

# tell Capybara about our app class
Capybara.app = Battle
```

Inside our `spec` directory, let's create a `features` directory. This will house our feature tests, which will be written using Capybara. A separate directory will separate feature tests from unit tests, which will be written in raw RSpec.

```
.
└── battle
    ├── spec
    │   ├── features
    │   └── spec_helper.rb
    ├── .rspec
    ├── Gemfile
    ├── Gemfile.lock
    ├── app.rb
    └── config.ru
```

Let's add a feature test within that directory:

```
.
└── battle
    ├── spec
    │   ├── features
    │   │   └── testing_infrastructure_spec.rb
    │   └── spec_helper.rb
    ├── .rspec
    ├── Gemfile
    ├── Gemfile.lock
    ├── app.rb
    └── config.ru
```

We write a very simple test that checks that we can visit the homepage and verify that it has some content.

```ruby
# in spec/features/testing_infrastructure_spec.rb

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
```

We run `rspec`.

If RSpec and our `spec_helper.rb` are set up correctly, RSpec outputs `1 example, 1 failure`.

We now update our app so that the homepage displays `Testing infrastructure working!`:

```ruby
get '/' do
  'Testing infrastructure working!'
end
```

We run `rspec`. RSpec outputs `1 example, 0 failures`.

[Forward to the Challenge Map](../README.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/walkthroughs/getting_test_infrastructure_set_up.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/walkthroughs/getting_test_infrastructure_set_up.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/walkthroughs/getting_test_infrastructure_set_up.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/walkthroughs/getting_test_infrastructure_set_up.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/walkthroughs/getting_test_infrastructure_set_up.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
