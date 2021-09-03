## Copying and moving files
Copying directories is quite straight-forward. Let's create a new directory, change into it and create an empty file:

`mkdir SomeDir`

`cd SomeDir`

`touch someFile`

Now, if we wanted to create an exact copy of `someFile` we'd use this command:

`cp someFile newFile`

The copy command is `cp` and takes two parameters. The first is the file to be copied and the second is the new file that will be created from it. If we list the contents of the directory now, we'll see both files:

```shell
; mkdir SomeDir
; cd SomeDir
; touch someFile
; cp someFile newFile
; ls
newFile
someFile

```

Now what if we wanted to move 'newFile' somewhere else?

`mv newFile ../newFile`

The 'mv' or 'move' command takes two parameters. The first is the file to be moved (and its location) and the second is where the file will be moved to. In our situation, we didn't have to specify the path of `newFile` because it was already in our working directory, but we did need to specify the path of where we wanted to move it because it was outside of our working directory. We used `..` again, just like we did with the `cd` command, to specify that we wanted to move the file to our parent directory.

If we now change directories to the parent and list the contents, we'll see the file.

`cd ..`

`ls`

```shell
; ls
newFile
someFile
; mv newFile ../newFile
; ls
someFile
; cd ..
; ls
SomeDir
lovelace.jpg
makers.txt
newFile
turing.html

```

Did you notice how I specified the name `newFile` when declaring the destination as well? This means that we can actually use the `mv` command to rename files without even moving them.

Let's go back into our `SomeDir` directory to bring `newFile` back over and I'll show you what I mean:

`cd SomeDir`

`mv ../newFile newFile`

`ls`

```shell
; cd SomeDir
; mv ../newFile newFile
; ls
newFile
someFile

```

If we now run `mv` without providing a new destination, we can simply rename the file:

`mv newFile newerFile`

```shell
; mv newFile newerFile
; ls
newerFile
someFile

```

[Go to the next section](./11_viewing_files.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/10_copying_and_moving_files.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/10_copying_and_moving_files.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/10_copying_and_moving_files.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/10_copying_and_moving_files.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/10_copying_and_moving_files.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
