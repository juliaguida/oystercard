## Pipes and Redirection
Pipes allow you to redirect streams. For example:

`cat combined | less`

The `|` symbol, also known as a 'pipe', passes the output stream (what would normally be printed on the screen) of the command to the left of the pipe to the input stream of the command on the right. So in this example, it's passing the output of the file 'combined' into the `less` command that we learned about earlier.

This will make `less` take the input from the input stream as opposed to opening the file given as an argument. The output of cat combined will not be shown on the screen at all since we redirected the output stream to the input stream of less.

Let's consider another example. Suppose you have lots of files in the current directory and you would like to view them using the less command instead of just printing thousands of lines on the screen. You can redirect the output of ls to less.

`ls -lA | less`

Then you'll be able to move up and down the text as if the output were a normal file. Later in this lesson we'll see many more examples of redirection.

In addition to redirecting the output stream of one program to the input stream of another one, we can redirect the output to a file. Consider this example.

`cat combined > newCombined`

The greater-than symbol writes the output stream of the command on the left to the file on the right. Wait, we didn't have a `newCombined` file before, did we? Let's check the folder's contents now.

```shell
; ls
combined
longText.txt
newerFile
someFile
someMoreText
someText
; cat combined > newCombined
; ls
combined
longText.txt
newCombined
newerFile
someFile
someMoreText
someText

```

What happened is that we wrote the output of `combined` into a new file that we named `newCombined`.

[Go to the next section](./17_wildcards.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/16_pipes_and_redirection.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/16_pipes_and_redirection.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/16_pipes_and_redirection.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/16_pipes_and_redirection.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/16_pipes_and_redirection.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
