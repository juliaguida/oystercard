# Make it your own

You've built a working emulator – now it's your chance to take this codebase in your own direction. Do you want to further improve code quality? Perhaps you would rather add more features or build a nice user interface (for the command line).

### To complete this challenge, you will need to:
- [ ] Pick one or more tasks and do the work
OR
- [ ] Come up with your own task, extract some learning objectives, then do the work

### Options

You are not expected to complete all of these tasks! Pick one that helps you to achieve your goals for today, work on it and, if you finish, pick another one.

#### Further improve code quality
You've already worked through a few nice refactoring steps, but there's always more polishing to be done.  How though, will you know what to change? One option is to use a static code analysis tool such as [rubocop](https://github.com/rubocop/rubocop) or [reek](https://github.com/troessner/reek). Another option is to share your code with a peer and get feedback – you could then do the same for them!

#### Monetisation
> As the Mayor of London
> So that I can continue to reap the reputational rewards of Boris Bikes
> The system must be sustainable (users must be charged)

At the moment, it would appear that these bikes are free to use!  Design and implemnt a system that means people have to pay to use these bikes. You can assume that they'll use Oyster Cards and that those cards will be topped up elsewhere in, for example, Tube Stations.

#### Reporting broken bikes
> As a member of staff at TfL
> So that I can ensure broken bikes are collected and fixed in a timely manner
> I need to know how many broken bikes each station contains

Use the [observer pattern](https://refactoring.guru/design-patterns/observer/ruby/example) so that docking stations can report any broken bikes, when they're docked, to a monitoring system. If you already have a Scooter class, report broken scooters in the same way.

#### Break up the bike
> As a member of staff at TfL
> So that I can ensure we have all the spare parts needed to fix each broken bike
> I need to know what is wrong with each broken bike

Break up the Bike into different components such as wheels, frame, gears, brakes etc, and give each one the ability to be either `broken` or `working`. Then, let the Bike report on each of it's components. If you have already implemented the monitoring system, use that. If not, devise a Bike method which generates a short report. If you already have a Scooter class, break that up into components as well.

#### Stock keeping
> As a bike mechanic working at TfL
> So that I can repair bikes promptly
> I need a system to track which bike parts are in stock
> And whether we have currently have sufficient stock to fix all currently broken bikes

You can only do this one after implementing **Reporting broken bikes** and **Break up the bike**. When a bike part is broken, that should get reported to a garage.

#### Add scooters
> As a fan of scooters
> So that I can get around quickly
> I want to rent a scooter via the Boris Bikes scheme

Add a Scooter class and a new type of docking station. Aim to avoid duplicating code. You might need to refactor some of the existing classes. If you already broke your Bike down into components, do this from the start for Scooter.

#### Electrify!
> As a user of Boris Bikes
> So that I have to exert less energy
> I need the bikes to be electric

> As a user of Boris Bikes
> So that my electric bike doesn't run out of battery at an inconvenient moment
> I need to know how much power it has left

> As a user of Boris Bikes
> So that I can always pick up a fully charged electric bike
> I need docking stations that can charge electric bikes

Electrify the bikes and implement a feature that shows how much charge is left on the battery. You'll also need to implement charging at docking stations.  It's up to you to decide how long charging takes.  For extra challenge, make the bikes charge at a rate of 1% per minute (and make sure to write tests first).

#### Build a user interface for docking stations
> As a user of Boris Bikes
> So that I can rent bikes easily and without having to learn Ruby
> I want a nice user interface

Build and test a new UserInterface class which is used by DockingStation to present options to and get inputs from a user.

#### Reporting
> As a member of staff at TfL
> So that I can report on the popularity and efficiency of the Boris Bikes scheme
> I need a regular report of bike usage and state

If you already have a monitoring system, make it print a report to file. That file should contain these details for the last week.
- Number of bikes hired out
- Number of bikes broken
- Number of bikes fixed
- Average time taken to fix a bike

You'll need to build several other features in order to complete this task. It's your job to plan those – start by making a list and then write a user story for each one.

#### !Nightriders
> As the Mayor of London
> So that I can reduce the number of night time accidents
> I need to prevent people from riding Boris Bikes after dark

Note that the time of sunset will change throughout the year.

[Back to the Challenge Map](0_challenge_map.md)

[Previous Challenge](19_modules_as_mixins.md)