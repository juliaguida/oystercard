## Creating and destroying directories
So far all we've done is move around our file system and look at the contents. Let's now look at ways to make, move and remove files and directories. First off, let's start with:

`mkdir Example`

Any guess what this stands for? This is the 'make directory' command with the added parameter of 'Example' - it makes a new directory in whatever directory you're currently in with the name 'Example':

```shell
; ls
lovelace.jpg
makers.txt
turing.html
; mkdir Example
; ls
Example
lovelace.jpg
makers.txt
turing.html
worksheet

```

We can remove that directory just as easily as we created it:

`rmdir Example`

Here `rmdir` stands for 'remove directory' with the parameter 'Example' - telling it to remove the 'Example' directory.

```shell
; rmdir Example
; ls
lovelace.jpg
makers.txt
turing.html
worksheet

```

If, instead of a directory, we wanted to remove a file. We would simply use `rm` and the file name. We created an empty file using the `touch` command a while back, let's remove it now. Although please note that it is very difficult to recover files that have been deleted with rm so please be very careful using this command:

`rm worksheet`

```shell
; ls
lovelace.jpg
makers.txt
turing.html
worksheet
; rm worksheet
; ls
lovelace.jpg
makers.txt
turing.html

```

Now let's try something else. Let's create a new directory called `SomeDir`, change to that directory, create an empty file called `someFile` and then change back out to its parent directory:

`mkdir SomeDir`

`cd SomeDir`

`touch someFile`

`cd ..`

What if we wanted to remove `SomeDir`? Let's try running `rmdir` again:

`rmdir SomeDir`

What? You got an error?

```shell
; mkdir SomeDir
; cd SomeDir
; touch someFile
; cd ..
; rmdir SomeDir
rmdir: SomeDir: Directory not empty

```

That's because `rmdir` only works for empty directories. This is where some of those parameters will come in handy. Try this instead:

`rm -r SomeDir`

This uses the `rm` command with two parameters. The second parameter is the name of the directory the command will act on. The first parameter (switch) is `-r` and tells the remove command to recursively remove all files within the directory as well as the directory itself.

```shell
; rm -r SomeDir
; ls
lovelace.jpg
makers.txt
turing.html

```

Just to introduce you to a couple of other important `rm` parameters that you'll find useful:

`rm -i`

The `-i` parameter here stands for 'interactive' and will prompt you to confirm that you want to delete each file. This is really useful for when you have a lot of files but only want to delete a few of them.

Other times you don't care about protection and want to just force remove files. This is done with:

`rm -f`

This will remove any file even if it's 'write protected', so please be extra careful with this command!

[Go to the next section](./10_copying_and_moving_files.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/09_creating_and_destroying_directories.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/09_creating_and_destroying_directories.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/09_creating_and_destroying_directories.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/09_creating_and_destroying_directories.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/09_creating_and_destroying_directories.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
