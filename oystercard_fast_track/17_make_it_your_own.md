# Make it your own

[Back to the challenge map](README.md)

Well done for completing challenge steps 1 to 16!  Take a moment to appreciate your work so far and reflect on your approach.  Importantly, did you write you tests first?  If not, resolve to do things different for this last section :)

## To complete this challenge, you will need to:
- [ ] Pick one or more tasks and do the work
OR
- [ ] Come up with your own task, extract some learning objectives, then do the work
- [ ] Make a 30 min screen recording of yourself working on something from this list and share it with a peer for feedback on your developer process
- [ ] Watch a screen recording by one of your peers and give them feedback on their developer process

## Options

When taking on these challenges, remember that the week is primarily about Object Oriented Design and Test Driven Development. So, plan carefully and try to keep your code DRY and adhere to the Single Responsibility Principle but also experiment with the pillars of OOD – Inheritance, Encapsulation, Abstraction and Polymorphism.

The goal of OOD is to end up with code that is easy to change. If you find that lots of things start to break when you make changes, that's a good moment to reflect on your codebase and think carefully about some refactoring.

### New Card Types

How will you implement these new card types whilst maintaining high code quality?

#### Annual Passes

```
As a user of the Oystercard system
So that I can save money in the long run
I need an annual pass
And the annual pass should be valid on all forms of TfL transport
```

At the moment, cards have to be topped up but Annual Passes will be valid for one year from the date of purchase and will have no specific balance. How will you implement this? How would this impact on your application?

#### TfL Staff Cards

```
As a member of the TfL team
So that I can be a little bit happier in my job
I need free access to all of TfL's services
```

A staff card will have an expiry date and is then renewed as needed.

#### Young Person Cards

```
As a young person who uses TfL's services
So that I can get around and not run out of money
I need discounted fares on all of TfL's services
```
#### Pensioner's Cards
```
As a pensioner
So that I can get around and not run out of money
I need free access to all of TfL's services
```

A pensioner's card is only issued to people over 65 and it never expires.

### New Modes of Transport

How will you implement these new modes of transport whilst maintaining high code quality? Each new mode of transport will need it's own pricing system and the rules about touching in and out might also change.

### Busses

```
As an Oystercard user
So that I can easily use all of TfL's services
I need a card that also works on Busses
```

In London, busses charge a flat rate for each journey, regardless of how far you travel. Plus, you only need to touch in (you do not touch out of the bus).

### Overground Trains

```
As an Oystercard user
So that I can easily use all of TfL's services
I need a card that also works on overground trains
```

London's overground trains work in a similar way to the underground trains, for this purpose at least – the stations are zoned and you get charged based on that. Like the underground, you need to touch in and touch out.

## Iterate on Zoning

### Zones have different fares

```
As the CEO of TfL
So that we deter people from unnecessary movement through central zones
I want to charge people more for travelling through those zones
```

Travelling within or through Zone 1 now costs £3
Travelling within or through Zone 2 now costs £2
Travelling within or through Zone 3 now costs £1
Travelling within or through Zone 4 now costs £0.50

### Travelling from Zone 2 to Zone 2, via Zone 1 and so on...

```
As the CEO of TfL
So that we deter people from unnecessary movement through central zones
I need to make sure that journeys between zones are correctly charged
```

At the moment, someone starting and ending in Zone 2 get's charged as if they'd stayed in Zone 2, even if they actually travelled through Zone 1. The same applies to other journeys which go from one side of the city to the other.

What's the simplest possible way to figure out if a journey that starts and ends in the same zone has included another zone in the middle?  I.e. Be careful not to over complicate this one!

[Previous Challenge](16_fare_for_zones.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=oystercard_fast_track/17_make_it_your_own.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=oystercard_fast_track/17_make_it_your_own.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=oystercard_fast_track/17_make_it_your_own.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=oystercard_fast_track/17_make_it_your_own.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=oystercard_fast_track/17_make_it_your_own.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
