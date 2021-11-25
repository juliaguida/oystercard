# Testing with an Automated Browser and Capybara

[Back to the Challenge Map](README.md)

Recall that a web application is a kind of program that sends and receives messages over *HTTP*. The content of these messages is typically HTML.

In order to test an object like a web application, then, we need a tool that is able to send/receive messages over HTTP as well as process HTML.

**Automated browsers** are one such technology. **Automated browsers** are like browsers such as Chrome or Safari, except that they are able to receive instructions **programmatically**, not just from mouse clicks or keyboard presses. How do we write these instructions? In Ruby, we can use **Capybara** as an add-on to RSpec to compose our instructions.

In this challenge you will learn how to use Capybara to send instructions to an automated browser.

### Learning Objectives covered
- Understand what an automated browser is.
- Understand what Capybara is used for.
- Send instructions to an automated browser with Capybara

### Challenge setup

To complete this challenge you will need to have Firefox installed.

### To complete this challenge, you will need to:

- [ ] Make sure you have installed Firefox browser on your machine (you can use `brew install firefox` if you haven't).
- [ ] Follow the Capybara workout instructions below. You can refer to a [Capybara cheat sheet](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf) to complete the Capybara workout.
- [ ] Explain to your pair partner what we use `capybara` for and what it's doing.

### Capybara workout instructions

1. In a new directory, create a Gemfile listing two dependencies (as below), then run `bundle install`. Make the install process works - you may need to manually install Xcode if you haven't already.

```ruby
source "https://rubygems.org"
gem 'capybara'
gem 'selenium-webdriver'
```

2. Install Firefox and GeckoDriver and make sure `geckodriver` it can be run without being blocked by macOS security. You might want to run `geckodriver` in the terminal to verify it's allowed to run, and follow the instructions on [how to allow downloaded software to run on macOS if needed](https://support.apple.com/en-gb/HT202491#:~:text=If%20you%20want%20to%20open%20an%20app%20that%20hasn%E2%80%99t%20been%20notarised%20or%20is%20from%20an%20unidentified%20developer).

```bash
> brew install --cask firefox
> brew install geckodriver
> geckodriver

geckodriver 0.30.0 
WebDriver implementation for Firefox

USAGE:
    geckodriver [FLAGS] [OPTIONS]

    (...)
```

3. Run the following Ruby lines, one by one, in IRB from the project directory — this will require and setup Capybara so we can use its methods directly within the IRB session:

```ruby
3.0.0 :001 > require 'capybara' 
 => true
3.0.0 :002 > require 'capybara/dsl'
 => true
3.0.0 :003 > require 'selenium-webdriver'
 => true
3.0.0 :004 > extend Capybara::DSL
extending the main object with Capybara::DSL is not recommended!
 => main 
3.0.0 :005 > Capybara.default_driver = :selenium
 => :selenium
```

4. Still in IRB, use the `visit` Capybara method to visit the workout's URL. You might have to wait a bit before something happens. Firefox will launch and automatically open a new window - this is normal, the window is controlled by Capybara.
```ruby
3.0.0 :006 > visit('http://capybara-workout.herokuapp.com/workout')
```

5. Have a quick glance at the page that just opened in the browser, titled "Capybara workout". We'll interact with it, but not with our browser. You **should not interact directly, with the browser UI, with the elements on that page for the rest of this tutorial**, as we'll use Capybara from IRB to do this.

6. Look at [the Capybara cheatsheet](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf) and find the method to click on a button with a specific label. **Use this method to click on the button with the label "Click me!", and observe what changed in the browser's window.**

7. Looking at the cheatsheet again, find a method to check that the page has a button. Use this method to **verify that the page now contains a button with label "Well done!"** (this is the button we previously clicked - its label changed).

8. Scroll on the page to have a look at the next section "Radio buttons". Find and use a Capybara method to **check the first checkbox 'Check me!'**, and observe the button being checked on the page. **Do the same for the second checkbox 'And me.'.**

9. Use Capybara methods to **fill the form at the end of the page, and submit it as well**. You should fill all five fields and click on the submit button — again, *all from the terminal* using Capybara's methods.

10. Run steps 4 to 9 again, but this time without looking at the cheatsheet to complete the workout page.

Congratulations, you've completed the workout! You've seen how we're able to simulate user interaction with a website without having to use directly the browser. And this is exactly why it's going to be useful when writing our tests.

### Resources

- [Selenium](http://www.seleniumhq.org/)
- [Capybara Cheat Sheet](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf)
- [GeckoDriver brew formula](https://formulae.brew.sh/formula/geckodriver)
- [Mozilla GeckoDriver](https://github.com/mozilla/geckodriver)

[Previous challenge](sinatra_using_the_chrome_devtools.md) - [Next challenge](getting_started_with_battle.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/testing_with_capybara.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/testing_with_capybara.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/testing_with_capybara.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/testing_with_capybara.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=intro_to_the_web/testing_with_capybara.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
