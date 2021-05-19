# Doubles, mocks, stubs, spies and fakes

In object-oriented code, we often have lots of objects interacting with one another. 
One object sends a message to another object and maybe that object responds with an answer. 
Or maybe it changes some internal state. 
Or maybe it interacts with a third object, or calls some expensive external service, or generates a random result, or ...

Sometimes these interactions are predictable. 
Sometimes they are not. 
How do we write tests for such code while making sure that all these interactions between objects don't trip us up?
If we just tested all of these objects at once, it would be hard to tell whether our tests are actually testing what we want.
They might be passing when the code we're trying to test doesn't really do what we need it to or failing when the code is actually correct.
Ideally, when testing `ObjectA`, we don't want our test to be arbitrarily dependent on the behaviour of `ObjectB`, particularly if `ObjectB` itself has complex logic, or is expensive/complicated to set up. 

So how do we remove these arbitrary dependencies on `ObjectB`? 

Enter the idea of _mocking_ and with it a bunch more terms like _doubles_, _stubs_, _spies_ and _fakes_.

What do these terms refer to and what are the differences between them?
Unfortunately, this terminology is not agreed upon in the community so you’ll see a lot of contradictory information on the internet.
Since it's nice to have shared names for things though, the following sections describe how we use these terms at Makers.

## Mocks and mocking
At Makers, use these words as umbrella terms for the practice of creating "pretend" objects or methods to simulate the environment or input of our tests.
Method stubs and doubles, defined below, are special cases of mocks.

## Doubles

A double refers specifically to a "pretend" object.
At Makers, we borrow this name from RSpec (although RSpec is not where it originated). 
We often pre-program them with expectations about which calls they are expected to receive.

Instead of testing `ObjectA` against an instance of `ObjectB`, we use a stand in (a "stunt double" if you like) for `ObjectB` instead.
`ObjectA` doesn't know the difference, it simply treats the double as if were an instance of `ObjectB`, but it's not - it's a pretend object that we've set up and which won't introduce any unpredictable behaviour into our test.

## Stubbing or method stubbing

Stubbing refers to the technique of providing canned responses to methods so that we can simulate the scenarios we want in tests.
You can stub methods on doubles, but in languages like Ruby or Javascript you can also stub built-in methods.
For example, you could stub Ruby’s random function like this:

```
# weather.rb
class Weather

  def generate
    weather_types = [:rainy, :sunny, :stormy]
    # picks a random index in the array and returns the value at that index
    weather_types[Kernel.rand(weather_types.length)]
  end

end

# weather_spec.rb

describe Weather do
  it "creates stormy weather" do
    allow(Kernel).to receive(:rand).and_return(2) # stubbing Kernel.rand
    expect(Weather.new.generate).to eq(:stormy)
  end
end
```

## Spies

This is where things already get murkier!

In RSpec, [spies](https://relishapp.com/rspec/rspec-mocks/v/3-10/docs/basics/spies) are special types of doubles that don’t require you to pre-program which methods you expect to be called first before they are called.
They allow you to write code in a more "Arrange, Act, Assert" style that many people like.

In Jasmine, a [spy](https://jasmine.github.io/2.0/introduction#section-Spies) refers to something a little different.
It can act like an RSpec double in that it can be used to stub a function, change what it returns and track calls to it.
However, a Jasmine spy can also be used to simply track calls to the real function, without stubbing it, i.e. without changing the real behaviour of the function.

## Fakes
Fakes are typically not doubles but rather real instances of classes that actually have working implementations, but usually take some shortcut which makes them not suitable for production (for example an email service that doesn’t send a real email but just logs the fact that it would have, or a database that’s really just a simple file). 

Usually we use fakes when we want to avoid the work of setting up the real thing but do want to verify that our code could interact with it correctly. You won’t encounter them much at Makers but they are frequently used in real codebases. 

For example, S3 is a cloud storage service provided by Amazon Web Services which many tech companies rely on.
A quick search on Google for "fake S3" returns `fake-s3` which describes itself as "a lightweight server that responds to the same API of Amazon S3".

And why did someone bother building `fake-s3`? The repo's README page answers that too: 

> It is extremely useful for testing of S3 in a sandbox environment without actually making calls to Amazon, which not only requires a network connection, but also costs money with every use.
But either way, if I am testing ObjectA, then I don't want my test to be arbitrarily dependent on the behaviour of ObjectB. Particularly if ObjectB is expensive or complex to instantiate.
## Final note

As mentioned at the outset, the above describes how we use these terms at Makers.
Outside of Makers, be prepared to encounter different definitions, especially as you start using different frameworks, testing libraries and programming languages.

Nevertheless, the core idea behind all of these terms remains the same.
They all refer to the practice of replacing the "real" behaviour of our code with behaviour that we can control, inspect or have some guarantees about so that we can write more useful tests.

As an added bonus, these techniques can help you improve the design of your code as well. Here's why:

- Good code is always easy to test.
- Bad code is sometimes easy to test.
- Hard-to-test code is never any good.
 
So, by making your code easy to test using mocking, you might end up discovering how to improve its design as well! 

## Resources

- [RSpec doubles](https://relishapp.com/rspec/rspec-mocks/v/3-10/docs/basics/test-doubles)
- [RSpec spies](https://relishapp.com/rspec/rspec-mocks/v/3-10/docs/basics/spies)
- [Jasmine spies](https://jasmine.github.io/2.0/introduction#section-Spies)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/doubles.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/doubles.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/doubles.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/doubles.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/doubles.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
