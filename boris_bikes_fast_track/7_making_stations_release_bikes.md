# Making Docking Stations Release Bikes

[Back to the Challenge Map](0_challenge_map.md)

You now have a definition for a `DockingStation` and a `Bike`. Docking Stations respond to `release_bike`, and Bikes respond to `working?`.

In this challenge, you will deliver the completed feature from the first two user stories.  You'll then manually test your the feature to confirm that your two classes work together in the expected way.

### Learning Objectives covered
- Use Objects within other Objects
- Use RSpec 'predicate' syntax

### To complete this challenge, you will need to:

- [ ] Explain the error to your pair partner
- [ ] Add a test to your DockingStation specification that a) gets a bike, and then b) expects the bike to be working
- [ ] Make this test pass
- [ ] Manually test your application by loading the files in IRB, then creating a DockingStation and Bike to play with

### Hints

<details><summary>CLICK ME</summary>
  
  <li>Your test should check that you can call working? on the result of DockingStation.release_bike, and that the result of doing so is true.</li>
  <li>you're likely to have to go through several iterations of this test before it finally passes.  Remember to let your error messages guide you, doing the bare minimum to make progress.</li>
  <li>First, you'll need to make it so that your release_bike method returns a Bike.  Having done this your test will still fail - your working? method return nil.</li>
</details>

### Resources
- :pill: [The BDD Cycle](https://github.com/makersacademy/course/blob/main/pills/bdd_cycle.md)

[Previous Challenge](6_building_a_bike.md) | [Next Challenge](8_using_instance_variables.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/7_making_stations_release_bikes.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/7_making_stations_release_bikes.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/7_making_stations_release_bikes.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/7_making_stations_release_bikes.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes_fast_track/7_making_stations_release_bikes.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
