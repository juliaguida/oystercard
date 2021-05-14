**Crucial Omissions:** There are some cross-cutting strands that we fit in alongside other work. These include wellbeing and code quality. They are not the topic of any one module, and you will miss them out unless you think of them regularly!

## Weeks 1 & 2: Basic Programming

By the end of modules 1 & 2 all developers can:

* Navigate a unix command line
* Version control projects
* Write a procedural program
* Use a process for solving a problem

### Challenges

* [Mastery Quizzes](https://mastery-curriculum.makers.tech/)
* [Student Directory](https://github.com/makersacademy/student-directory)
* [TDD FizzBuzz Kata](https://github.com/makersacademy/course/blob/master/fizzbuzz/fizzbuzz.md)

### Skills Breakdown

#### Navigate a unix command line
 - [ ] I can use the command line to run code and run tests

#### Version control projects
 - [ ] I can use git to access and submit mastery quizzes
 
#### Write a procedural program

 - [ ] I can write programs using variables
    * [Mastery Quizzes, Chapter 1](https://mastery-curriculum.makers.tech/chapter1/)
    * [Mastery Quizzes, Chapter 2](https://mastery-curriculum.makers.tech/chapter2/)
    * [Mastery Quizzes, Chapter 3](https://mastery-curriculum.makers.tech/chapter3/)
    * [Free code camp (0 - 1 hr 12)](https://youtu.be/t_ispmWmdjY)
    * [Codecademy (introduction to ruby) ](https://www.codecademy.com/courses/learn-ruby/lessons/introduction-to-ruby)

 - [ ] I can write programs using conditional logic
    * [Mastery Quizzes, Chapter 4](https://mastery-curriculum.makers.tech/chapter4/)
    * [Mastery Quizzes, Chapter 5](https://mastery-curriculum.makers.tech/chapter5/)
    * [Free code camp (1 hr 40 - 2 hr 05)](https://youtu.be/t_ispmWmdjY?t=6029)
    * [Codecademy (control flow in ruby)](https://www.codecademy.com/courses/learn-ruby/lessons/control-flow-in-ruby)

 - [ ] I can write programs using loops
    * [Mastery Quizzes, Chapter 6](https://mastery-curriculum.makers.tech/chapter6/)
    * [Free code camp (2 hr 15 - 3hr 05)](https://youtu.be/t_ispmWmdjY?t=8126)
    * [Codecademy (loops iterators)](https://www.codecademy.com/courses/learn-ruby/lessons/loops-iterators)

 - [ ] I can write programs using arrays and hashmaps
    * [Mastery Quizzes, Chapter 7](https://mastery-curriculum.makers.tech/chapter7/)
    * [Mastery Quizzes, Chapter 8](https://mastery-curriculum.makers.tech/chapter8/)
    * [Free code camp (1 hr 12 - 1hr 30)](https://youtu.be/t_ispmWmdjY?t=4338)
    * [Codecademy (arrays and hashes)](https://www.codecademy.com/courses/learn-ruby/lessons/ruby-data-structures/exercises/creating-arrays)


## Week 3: Test-Driven Development

### This module's main goals

By the end of the module all developers can:

* Gather evidence and use reflection to choose goals and track their progress
* Test-drive a simple program using objects and methods
* Pair using the driver-navigator style
* Follow an effective debugging process

#### The broader course goals relevant to this module are...

* I test-drive my code
* I use a methodical approach to solving problems
* I use my own initiative

Remind yourself of the rest [here](https://github.com/makersacademy/course/blob/master/apprenticeship_starting_pack/course_goals.md).

### Resources

* [TDD Fizzbuzz video](https://www.youtube.com/watch?)
* [The 4 phases of a test](https://robots.thoughtbot.com/four-phase-test)
* [The three rules of TDD](http://butunclebob.com/ArticleS.UncleBob.TheThreeRulesOfTdd)
* [Encapsulation on Wikipedia](https://en.wikipedia.org/wiki/Encapsulation_%28computer_programming%29)
* [Technical Learning Resources](https://airtable.com/shrtZmDUTQmQFdaZV/tblokmw6yNUO75ge6)

### Exercises for self-directed learning

These exercises can be used for independent study, or enhanced by group discussion.

For some skills, there are several options so that you can spend some time focussing on that one skill, if that's the best use of your time right now.  There is no expectation that you or anyone else will complete all the exercises.


| Key Skill                     | Exercise                                  | 
| ----------------------------- | ---------------------------------------------- |
| Test driven development       | [An intro to writing tests][writing_unit_tests]       |
|                               | [Test Driving Practical][tdd_practical]        |                                         |
|                               | [Bank Account][bank_account]                   |
|                               | [Diagram Your TDD Process][diagram_tdd]      |
| Debugging                     | [Debug a diary app][debugging_1]                     |                     

| Stretch Skill                 | Exercise                                  |                       
| ----------------------------- | ---------------------------------------------- | 
| Test Driving Multiple Objects | [Simple Checkout][simple_checkout]             |
|                               | [Test Drive a Notes App][tdd_notes_app]        |
| Deciding what to test         | [Testing behaviour rather than state][behaviour_vs_state] |

[debugging_1]: https://github.com/makersacademy/skills-workshops/tree/master/test_driven_development/debugging_1
[writing_unit_tests]: https://github.com/makersacademy/skills-workshops/tree/c268bb78fdc4df644d0ed7b1fdd189de426895f8/week-1/writing_tests
[diagram_tdd]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/testing/diagram_the_your_process.md
[tdd_practical]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/test_driving.md
[simple_checkout]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/testing/test_drive_multiple_objects.md
[tdd_notes_app]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/testing/test_drive_a_notes_app.md
[bank_account]: https://github.com/makersacademy/simple_tdd_bank
[behaviour_vs_state]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/testing/behaviour_not_state.md



### Pairing challenge

[Boris bikes](https://github.com/makersacademy/course/tree/master/boris_bikes)

### Individual challenge

[Airport](https://github.com/makersacademy/airport_challenge)


## Week 4: Object-Oriented Design

As a software developer, there are some things you can be sure of.

> 1. You're going to work on codebases that are, or will become, complex
> 2. How you manage complexity has long term consequences

Object Orientted Design (sometimes called Object Oriented Programming) is one way of ensuring that complexity is well managed and it's what we'll focus on this week.  It's important, however, to understand that other approaches exist and that the same goals underpin them all.

> We seek to write code that is easy to read, reason about and change by
> 1. Avoiding repetition
> 2. Breaking programs down into small, simple, pieces
> 3. Ensuring that the relationships among pieces are simple

Everything you learn about OOD this week will map onto one or more of those three goals.

### Getting started

#### Reflect on TDD

The skills and concepts dealt with this week build on the things you learned last week, so take a moment to reflect on Test Driven Development. 

* What did you learn about your progress from doing the Airport challenge?
* Can you test-drive a class with instance variables and methods?
* Can you test-drive two classes that work together?

If you need to spend more time working on these things, go for it!

#### Read and discuss this module's goals

By the end of the module all developers can:
* Review another person's code and learn from what they read
* Review another person's code and give them meaningful feedback
* Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
* Break one class into two classes that work together, while maintaining test coverage

Stretch:
* Test classes in isolation using mocking and dependency injection
* Apply some basic OOP principles in tightly focussed exercises

#### Read and discuss the relevant course goals

* I can write standards-compliant, clean object-oriented code
* I test-drive my code
* I can design a system

And you can remind yourself of the rest [here](https://github.com/makersacademy/course/blob/master/apprenticeship_starting_pack/course_goals.md).

### Resources
* [The 4 pilars of OOD](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/)
* [POODR](https://www.poodr.com/), by Sandi Metz, is very highly regarded.  Put it on your post-bootcamp reading list if you don't have time for it now.
* [SOLID](https://rubygarage.org/blog/solid-principles-of-ood) principles with Ruby examples
* [Technical learning resources](https://airtable.com/shrtZmDUTQmQFdaZV/tblokmw6yNUO75ge6)

### Exercises for self-directed learning

These exercises can be used for independent study, or enhanced by group discussion.

The intention is that you should work through the core exercises in order, from the top to the bottom of the table, looking at optional exercises which interest you or which relate to key skills you feel the need to practice.


| Key Skill                          | Exercise                                                 |                       
| ---------------------------------- | -------------------------------------------------------- | 
| Code Review                        | [Learn from someone else's code][code_review]            |
| Encapsulation                      | [Achieve high cohesion and low coupling][encapsulation]  |
| Refactoring                        | [Extract some variables, methods and classes][refactoring_using_oo]       |

| Stretch Skill                    | Exercise                                              |
| -------------------------------- | ----------------------------------------------------- | 
| Dependency injection             | [Inject some dependencies!][dependency_injection]     |
| Mocking                          | [Mock the diary class][mocking]                       |

[bank]: https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md
[API]: https://rapidapi.com/collection/recommended-apis
[class]: https://www.lucidchart.com/pages/uml-class-diagram
[sequence]: https://www.lucidchart.com/pages/uml-sequence-diagram
[diagram]: https://www.diagram.codes/
[code_review]: https://github.com/makersacademy/skills-workshops/tree/master/object_oriented_programming/code_review
[encapsulation]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/encapsulation.md
[forwarding_polymorphism]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/oo_relationships.md
[refactoring_using_oo]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/refactoring.md
[dependency_injection]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/dependency_injection.md
[mocking]: https://github.com/neoeno/testing_relationships_between_classes

### Pairing challenge

[Oystercard](https://github.com/makersacademy/course/tree/master/oystercard)

### Individual challenge options

This week you can choose your challenge...

* [Do the office management challenge](https://github.com/makersacademy/office-management-challenge)
* Or [the takeaway challenge](https://github.com/makersacademy/takeaway-challenge)


## Week 5: The Web

This week you'll learn how to build web applications in Ruby, using TDD.

### This module's main goals
By the end of the week, all developers can:
* Write feature tests using Capybara
* Test-drive a simple Sinatra app
* Follow an effective process to debug web applications
* Explain and diagram the HTTP request/response cycle
* Explain and diagram the MVC pattern

#### Stretch goals

If you complete the above, try to:
* Explain what is meant by 'deploy'
* Deploy a simple Sinatra app (for example, Hello, World) using the free tier on Heroku

These really are stretch goals.  We've not created any exercises for them, so part of the challenge is research based.  There's a lot of guidance on deploying sinatra applications to Heroku.  [This is a good place to start](https://devcenter.heroku.com/articles/rack#pure-rack-apps).

#### The broader course goals relevent to this module are...

* I can design and build user interfaces
* I test-drive my code

And you can remind yourself of the rest [here](https://github.com/makersacademy/course/blob/master/apprenticeship_starting_pack/course_goals.md).

### Resources

* [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works) – you'll probably get asked about this in a job interview one day ;)
* [History of the web](https://webfoundation.org/about/vision/history-of-the-web/?gclid=Cj0KCQjw59n8BRD2ARIsAAmgPmJcknSPKlT1ckzH7grP8DX_Mxr1be9qlqv13OEC9aI7pYe0CJoAVKQaAikrEALw_wcB)
* [Technical learning resources](https://airtable.com/shrtZmDUTQmQFdaZV/tblokmw6yNUO75ge6)

### Exercises for self-directed learning

These exercises can be used for independent study, or enhanced by group discussion.  They will help you work towards this week's goals.  If you find that these tasks contain a lot of code that confuses you, you might be better off doing some exercises from a previous week to cement that learning.  If you're not sure what to do, reach out to a coach right now!  Don't hesitate :)

> WATCH OUT, REMOTE WORKERS!!  Some of these exercises ask you to collaborate with another learner and send messages from your machine to theirs. This will not work as described unless you're on the same network, so you won't be able to do those few parts whilst working remotely.

| Key Skill             | Exercise.                                            |
| --------------------- | ---------------------------------------------------- |
| Servers/Clients       | [Servers][servers]                                   |
|                       | [Clients][clients]                                   |
|                       | [HTTP Severs][http_servers]                          |
| TDD                   | [Learn Capybara][capybara_workout]                   |
|                       | [Birthday][birthday]                                 |

[capybara_workout]: https://capybara-workout.herokuapp.com/
[servers]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/servers_and_clients/servers.md
[clients]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/servers_and_clients/clients.md
[http_servers]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/servers_and_clients/http_servers.md
[birthday]: https://github.com/makersacademy/course/blob/master/intro_to_the_web/post_challenges/birthday_app.md

### Pairing challenge

[Intro to the web / Battle](https://github.com/makersacademy/course/tree/master/intro_to_the_web)

### Individual challenge

[Rock Paper Scissors](https://github.com/makersacademy/rps-challenge-apprenticeships)


## Week 6: Databases

This week, you'll learn how to build database-backed web applications.  Along the way, you'll build your own [Object Relational Mapper](https://en.wikipedia.org/wiki/DataMapper). Bear in mind that you'll probably never have to do this again – you'd use an existing tool like [Active Record](https://github.com/rails/rails/tree/master/activerecord) or [Ruby Object Mapper](https://rom-rb.org/) instead – but building your own tools is a great way to learn how they work.

### This module's main goals

By the end of the module all developers can:

* Diagram the data flow from user action to server resource and back again
* Explain the basics of how databases work, including:
   - What tables are and how they are structured
   - What structured query language (SQL) is used for
   - One to one relationships
   - One to many relationships
   - Many to many relationships
* Follow an effective debugging process for database-backed web applications
* Build a simple web app that can read from and write to a database

#### The broader course goals relevent to this module are...

* I can integrate a database
* I can design a system

And you can remind yourself of the rest [here](https://github.com/makersacademy/course/blob/master/apprenticeship_starting_pack/course_goals.md).

### Exercises for self-directed learning

These exercises can be used for independent study, or enhanced by pairing and group discussion.

| Key Skill              | Exercise                                       |
| ---------------------- | -----------------------------------------------|
| Explain db relations   | [Entity Relationship Diagrams][ERD]            |
| Use SQL                | [SQL Zoo][zoo]                                 |
|                        | [SQL Murder Mystery][sqlmm]                    |
| Querying a database    | [Extend a DB backed app][ruby-db-queries]      |
| Build an app with a DB | [Message board][build-1]                       |

[sqlmm]: https://mystery.knightlab.com/
[build-1]: https://github.com/makersacademy/skills-workshops/tree/master/practicals/databases/blog
[ruby-db-queries]: https://github.com/makersacademy/makers-sql-session
[zoo]: https://sqlzoo.net/
[ERD]: https://github.com/makersacademy/skills-workshops/blob/master/practicals/databases/entity_relationship_diagrams.md

### Resources

* [The REST test](https://github.com/sjmog/rest)
* [Explain DBs like I'm 5](https://www.reddit.com/r/explainlikeimfive/comments/3qqm9h/eli5_relational_databases/)
* [A Shelfish Starter Guide to Databases](https://illustrated.dev/databases)
* [Technical learning resources](https://airtable.com/shrtZmDUTQmQFdaZV/tblokmw6yNUO75ge6)

### Pairing challenge

[Bookmark Manager](https://github.com/makersacademy/course/blob/master/bookmark_manager/00_challenge_map.md)

### Individual challenge

[Chitter](https://github.com/makersacademy/chitter-challenge-apprenticeships)

## Week 7: Learn A New Language

In this module you'll focus on developing a great process for learning a new language.  From time to time you should ask yourself this question: what would my plan be if I were to start learning another new language tomorrow?  You might find that your answer to this question changes during the week.

### This module's main goals

By the end of the module all developers can:

* Test drive a simple command-line app using COBOL.
* Follow an effective process for learning a new language

#### The broader course goals relevent to this module are...

* I test-drive my code
* I use my own initiative
* I use a methodical approach to solving problems

### Pairing challenge

[An intro to COBOL](https://github.com/makersacademy/cobol-intro/)

## Week 8: MakersBnB

During this week, you'll work in teams to [build a program according to a specification][makersbnb].  Technically, a lot of what you do will be a recap of the preceding weeks.

### This module's main goals

By the end of this module all developers can:

* Break down projects into tasks and allocate them to pairs
* Build to a specification (rather than challenges)
* Run stand-ups and retrospectives effectively
* Use a branch/PR/merge git workflow
* Give and receive meaningful code review

### Your schedule

Some team meetings have been added to your schedule already:

1. Team standups, where you'll quickly check in with each other and communicate your plans for the day.  Keep them brief. If you need time to discuss things in more detail, add specific meetings to your agenda for that.
2. Team stand downs, where you'll quickly refelct on how your day has gone.  Again keep them brief.
4. Sprint planning, where you'll aim to plan what work your team will take on in the next sprint.
5. Sprint review, where you look back on the work done in the current sprint. If you had clients, they'd be in the room for this one.
5. Sprint retrospectives, where you'll seek answers to the question "how can we be a better team?".  You'll think about what you did well, what could be improved and what actions you'll take to realise those improvements.

You might consider adding these to your shedule:

1. Independent learning.  Make sure you strictly time box this and always include time for sharing what has been learned.  I'd recommend that you keep these to 45 mins plus 15 mins for sharing.
2. Mobbing.  This is where you all 'gather around' one machine and write code together. It can be useful to have 3+ brains and pairs of eyes on a problem but these sessions can become tiresome.  Again, you should strictly time box these sessions.  You should also watch out for signs of disengagement – if you see them, it's time to mix things up.

### Why so many meetings??

For some of you, this will seem like overkill and you'll want to 'just get cracking', or something like that.  These meetings, however, are designed to ensure that by the time you do get cracking, you are happier and more productive.

1 hour spent working on a really well understood task, pulling in the right direction, is worth infinitely more than 2 hours working on a poorly defined task, creating something that doesn't meet the specifications.

[makersbnb]: https://github.com/makersacademy/course/tree/master/makersbnb

### Who will facilitate your meetings?

On placement, you'll work in multidisciplinary teams, with people like Deliver Mangers and Product Managers, who provide vision and support.  This week, you'll do a lot of these things for yourselves.  I'd recommend that each day you nominate someone to faciliate team meetings.  Ideally, everyone in the team has at least one day in this role.

As facilitator, your most important job is to create and maintain an friendly space so that everyone in the team feels comfortable contributing.  You might occasionally need to take a step back in order to do this well.

### What are the hallmarks of a great team?

How many of these can you tick off?

   [ ] We all understand every ticket in the backlog\
   [ ] We do not have to ask for clarity on tickets in the middle of a sprint\
   [ ] All of our code is peer reviewed\
   [ ] We are sharing knowledge within the team\
   [ ] We all feel comfortable speaking openly in team retrospectives

What would you add to the list?

## Weeks 9 & 10: Maintenance Project

A project in teams, consisting of working through a set of tickets to make improvements & changes to an existing legacy codebase in COBOL.

### This module's main goals

By the end of this module, all developers can...

- Understand moderate complexity existing code
- Make specified changes to the existing code
- Verify these changes have had the specified effect and avoided regressions


## Weeks 11 & 12: Adaptation Project

A project in teams, consisting of adapting an existing COBOL system to a new purpose.

### This module's main goals

By the end of the module, all developers can...

- Adapt existing software to perform new functions
- Make code more adaptable for future developers



<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=cobol_apprenticeship_module_outlines.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=cobol_apprenticeship_module_outlines.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=cobol_apprenticeship_module_outlines.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=cobol_apprenticeship_module_outlines.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=cobol_apprenticeship_module_outlines.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
