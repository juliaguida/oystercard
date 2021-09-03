## Environment
If you were asked to describe the physical environment you are in, you could tell a few things about where you are (country, city, street, etc.), what temperature and humidity are, what time of the day and what season it is, what language people around you speak etc.

If you are working with the command line, you also operate in an environment. For example, the command-line knows where your home folder is, where to find ruby, what's your username, and many other things. All this information is stored in environmental variables.

Environmental variables (or env vars, for short) describe the current terminal session. You can see them by typing: 

`env`

```shell
; env
SHELL=/bin/zsh
HOME=/Users/username
USER=username
RUBY_VERSION=ruby-3.0.0
rvm_recommended_ruby=rvm install ruby-3.0.1
install_flag=1
GEM_HOME=/Users/username/.rvm/gems/ruby-3.0.0
GEM_PATH=/Users/username/.rvm/gems/ruby-3.0.0:/Users/username/.rvm/gems/ruby-3.0.0@global
rvm_hook=
LANG=en_GB.UTF-8
_=/usr/bin/env

```

Every line on this screen is a key/value pair, e.g.

HOME=/Users/username

The key in this pair is `HOME` and it points to the value `/Users/username`.
The `HOME` env variable defines where the home directory is for the current user. You can easily find variables responsible for setting the username, language, temporary directory, etc.

Every program you launch on your computer has access to the environment variables. They help the programs to understand what environment they are working in. For example, if you needed to create a temporary file in your Ruby code, you'd read the value of the `TMPDIR` env variable to find out where the temporary directory is.

You can view any single environment variable by typing: `echo $ENV_VAR'`, for example:

```shell
; echo $HOME
/Users/username

```

[Go to the next section](./24_echo.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/23_environment.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/23_environment.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/23_environment.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/23_environment.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/23_environment.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
