## PATH
One of the most important environment variables is `PATH`, so let's discuss it in detail. `PATH` is a colon-separated list of directories where the shell will be looking for the programs you ask it to run. On my computer, it looks like this.

```shell
; echo $PATH
/Users/username/.rvm/gems/ruby-3.0.0/bin:/Users/username/.rvm/gems/ruby-3.0.0@global/bin:/Users/username/.rvm/rubies/ruby-3.0.0/bin:/Users/username/google-cloud-sdk/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/username/.rvm/bin

```

This is a list of paths, separated by colons. When you type a command without specifying its path, e.g. 'ruby', the shell looks through all these directories until it finds this file and executes it. So, when you type 'ls', the shell will be examining the following paths in order until it finds a file that exists.

```shell
/Users/username/.rvm/gems/ruby-3.0.0/bin/ls /Users/username/.rvm/gems/ruby-3.0.0@global/bin/ls /Users/username/.rvm/rubies/ruby-3.0.0/bin/ls /Users/username/.rvm/bin/ls /usr/bin/ls /bin/ls /usr/sbin/ls /sbin/ls /usr/local/bin/ls

```

On my system, `ls` will be found in `/bin/ls`.

Remember when we had to type `./hello.rb` to execute the file, instead of just `hello.rb`? This is because if we hadn't explicitly specified that the program was in the current directory, the shell would look in all `PATH` directories and wouldn't find it there. Every program that you can run from your command line without specifying where they are (`ls`, `chmod`, `date`, `pwd`, etc) are somewhere on the `PATH`.

If you have installed some software but you can't run it (command not found error), double-check that the `PATH` variable is set correctly.

[Go to the next section](./26_setting_environment_variables.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/25_path.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/25_path.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/25_path.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/25_path.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/25_path.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
