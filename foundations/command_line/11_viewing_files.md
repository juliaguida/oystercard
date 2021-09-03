## Viewing files
For this next section, open up a text editor (e.g. VS Code). If you're on Cloud9 you can use the built-in text editor. If you are using TextEdit on the Mac, do ensure that it is set to 'plain text' rather than 'rich text'. In TextEdit you can do this on the Format menu: `Format → Make Plain Text`. Note that it is very important to use plain text formatting. Rich text formatting (such as in MS Word) introduces extra symbols that will cause problems down the line.

Once you are set up in the 'plain' text editor of your choice, type in the following text into a new document (followed by an empty newline):

```text
There are 10 types of people in this world
```

Save the file into the `SomeDir` folder that we've been using and call it `someText`. To make sure everything worked according to plan, let's list the files in `SomeDir`. Everything looks good, but how would we view that text document directly from the command line?

`cat someText`

```shell
; ls
newerFile
someFile
someText
; cat someText
There are 10 types of people in this world

```

The `cat` command literally means 'concatenate' (just a fancy word for 'combine') as combining files is its primary purpose, but it has many other uses - such as the one I just showed you.
One of those many uses is to create short text documents right in the terminal. If we type:

`cat > someMoreText`

You'll see a blinking cursor on the next line for you type some text in. Go ahead and type:

```text
Those who understand binary and those who don't
```

Then hit `return`

Then type: `^C`

The `^C` interrupts the command and is done with `Ctrl+C`.

List the files again, just to make sure everything is fine.

We can combine (or 'concatenate') these two files with:

`cat someText someMoreText > combined`

Now if we view that file with:

`cat combined`

```shell
; cat someText someMoreText > combined
; cat combined
There are 10 types of people in this world
Those who understand binary and those who don't

```

Ta-da. It's magic.

[Go to the next section](./12_viewing_large_files.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/11_viewing_files.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/11_viewing_files.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/11_viewing_files.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/11_viewing_files.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/11_viewing_files.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
