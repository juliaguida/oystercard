## Profile files
The environment variables don't last for long. After you set them, they only stay in the environment until the end of the current shell session. However, you normally want them being available in all new shell sessions as well. Profile files are often used to achieve this.

Let's create (or re-create if it already exists) the env variable SEASON and verify that it exists:

```shell
; export SEASON=winter
; echo $SEASON
winter

```

Now open another terminal window and try to see if the variable exist. It shouldn't, it only exists in the shell where it was originally created. Every variable should be recreated every time a new terminal session starts.

## Bash or zsh Shell
When you start Terminal an application is loaded called the shell which is a command line interface (CLI) that allows users to interact with the computer’s operating system. When Apple released macOS 10.15 Catalina (2019) the default Terminal shell was changed from bash to zsh. Zsh incorporates a lot of useful features from other shells. In addition, there’s a bunch of things zsh can do to make your terminal experience better such as enhanced auto-completions and globbing, spell correction, path replacement, etc. You can tell which shell you're running by reading the title bar, running `echo $0` or if your command prompt has a `$` (Bash) or `%` (zsh) after your user and computer name. Skip to the appropriate section below depending on your shell.

### zsh
Every time a new shell session starts, several files are executed automatically on load. They are used, among other things, to configure the environment. One of these files is called `.zshrc` (note the dot at the beginning). It is located in the home directory.

```shell
; cat ~/.zshrc

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

```

If you have RVM installed (as you should), there will be some code related to loading RVM into the shell. This code makes RVM available for you to use in every shell.

We can also use the same file to create 'permanent' env vars. Let's put our `SEASON` variable into the file.

`echo "export SEASON=winter" >> ~/.zshrc`

(Double angle bracket `>>` means append, while single angle bracket `>` means overwrite)

Now our `.zshrc` file looks like this, or very similar:

```shell
; cat ~/.zshrc

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export SEASON=winter

```

Now open a new shell window and verify that the variable exists. If you've done everything correctly, it will.

### Bash
Every time a new shell session starts, several files are executed automatically on load. They are used, among other things, to configure the environment. One of these files is called `.bash_profile` (note the dot at the beginning). It is located in the home directory.

```shell
; cat ~/.bash_profile

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

```

If you have RVM installed (as you should), there will be some code related to loading RVM into the shell. This code makes RVM available for you to use in every shell.

We can also use the same file to create 'permanent' env vars. Let's put our `SEASON` variable into the file.

`echo "export SEASON=winter" >> ~/.bash_profile`

(Double angle bracket `>>` means append, while single angle bracket `>` means overwrite)

Now our .bash_profile file looks like this:

```shell
; cat ~/.bash_profile

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export SEASON=winter

```

Now open a new shell window and verify that the variable exists. If you've done everything correctly, it will.

[Go to the next section](./28_processes.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/27_profile_files.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/27_profile_files.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/27_profile_files.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/27_profile_files.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/27_profile_files.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
