# Rails helper methods

## What are helpers?

Rails has lots of helper methods which make life easier. These are methods which can be called on in your web app. `truncate`, for example, accepts a word and an integer as arguments, and then truncates that word if it's longer than the specified length. `pluralize` takes a singular noun and pluralises it.

`rails console` is a nice way of trying them out interactively. For example, you could have a go with `truncate`:

```shell
> helper.truncate("Testing", length: 5)
=> "Te..."
```

Or how about `pluralize`?

```shell
> helper.pluralize(2, 'dog')
=> "2 dogs"
```

## Writing your own helpers

Rails has blank helper files set up for you.

Say you have a controller called `Restaurants`. Rails has already created a file for you – `app/helpers/restaurants_helper.rb` – with a module that gets automatically included by the app.

```ruby
module RestaurantsHelper
end
```

You write methods in that module and call them elsewhere.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/rails_helpers.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/rails_helpers.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/rails_helpers.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/rails_helpers.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/rails_helpers.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
