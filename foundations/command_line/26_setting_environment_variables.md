## Setting environment variables
So far we've seen how to read environment variables. We can also set them. Try

`export SEASON=winter`

You've just created a new environment variable called `SEASON`. You can read its value back.

```shell
; echo $SEASON
winter

```

What if we wanted to modify `PATH`? Let's add one more directory at the end of `PATH`:

`export PATH=$PATH:/Users/username`

This adds my home directory to the end of the list of paths in `PATH`.

Why would we want to modify environment variables? One of the common use cases is storing sensitive data, e.g. passwords.

Let's say you're writing an open source project that uses photos from Facebook. Your code will need to use a secret key that will give you access to Facebook. This key is secret and you shouldn't share it with anyone. However, you want to share your open source code on GitHub. How should you do it?

Put your secret key in an environment variable and then read it from your code when you need it. For example:

`export SECRET_KEY=12345abcde`

Then, in your Ruby code, read the value:

```ruby
secret_key = ENV['SECRET_KEY']
```

This way you'll be able to share your code with anyone and upload it to a GitHub repository without compromising your keys.

[Go to the next section](./27_profile_files.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/26_setting_environment_variables.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/26_setting_environment_variables.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/26_setting_environment_variables.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/26_setting_environment_variables.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/26_setting_environment_variables.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
