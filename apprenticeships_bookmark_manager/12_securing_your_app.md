## Securing Your App

[Back to the Challenge Map](00_challenge_map.md#challenges)

We've built a database-enabled MVC Sinatra application with test and development environments. Bookmarks show on the homepage as a list of clickable anchors to the linked website, nicely titled.

Let's return to our specification:

* Show a list of bookmarks :white_check_mark:
* Add new bookmarks :white_check_mark:
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users manage their bookmarks

Great work so far, but is this app secure against attack? In short, no, it is not!

During this challenge step, you and your pair will be tasked with discovering a specific vulnerability, exploiting it on your own machine and then refactoring the codebase to secure the app.

## Learning Objectives covered

* Build a simple web app that can read from and write to a database
  * Build a database-enabled app whilst remaining compliant with security requirements

## To complete this challenge, you will need to

- [ ] Read through and discuss the [OWASP top ten][owasp_top_ten] security risks with your pair
- [ ] Use SQL injection on your app to drop the `bookmarks` table
- [ ] Secure your app against SQL injection

[owasp_top_ten]: https://owasp.org/www-project-top-ten/

## [Walkthrough](walkthroughs/12.md)

[Next Challenge](./13_deleting_bookmarks.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_bookmark_manager/12_securing_your_app.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_bookmark_manager/12_securing_your_app.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_bookmark_manager/12_securing_your_app.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_bookmark_manager/12_securing_your_app.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=apprenticeships_bookmark_manager/12_securing_your_app.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
