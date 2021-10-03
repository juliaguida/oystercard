# Walkthrough – Test Helpers

[Back to the Challenge](../test_helpers.md)

Let's make a new file, `web_helpers.rb`. We can use this file to store actions we commonly use in our feature tests.

```
.
└── battle
    ├── spec
    │   ├── features
    │   │   ├── enter_names_spec.rb
    │   │   ├── hit_points_spec.rb
    │   │   └── web_helpers.rb
    │   └── spec_helper.rb
    ├── .rspec
    ├── Gemfile
    ├── Gemfile.lock
    ├── app.rb
    └── config.ru
```

Let's `require` this file in our `spec_helper.rb` (because then we can access methods defined in `web_helpers.rb` in any of our tests):

```ruby
# in spec_helper.rb

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'
```

Which lines of code can we extract from our tests? These ones:

```ruby
# in spec/features/enter_names_spec.rb
# and in spec/features/hit_points_spec.rb

visit('/')
fill_in :player_1_name, with: 'Charlotte'
fill_in :player_2_name, with: 'Mittens'
click_button 'Submit'
```

Let's extract these lines to a method in `web_helpers.rb`:

```ruby
# in web_helpers.rb

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Charlotte'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end
```

Now we can replace those repeated lines in our tests. Here's `enter_names_spec.rb` with those lines replaced (`hit_points_spec.rb` is pretty similar):

```ruby
# in spec/features/enter_names_spec.rb
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end
```

That's much neater! Plus, we now have a handy method `sign_in_and_play` that will speed up our future development. Helpers are useful!

> It's worth seeing repetition several times before you extract to a helper. If you're only repeating yourself a handful of times, and don't anticipate that you'll repeat yourself more in future, don't extract to a helper. It's an extra file to check when trying to understand your code.

OK, let's implement another user story.

[Forward to the Challenge Map](../README.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/walkthroughs/test_helpers.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/walkthroughs/test_helpers.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/walkthroughs/test_helpers.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/walkthroughs/test_helpers.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_intro_to_the_web_fast_track/walkthroughs/test_helpers.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
