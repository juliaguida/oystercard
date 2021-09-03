## Counting words
Okay. We can find the files we want and get a fair amount of information, but there are still a few more tricks to make things easier.

For example, let's say that our longText.txt file needs to be fewer than 500 words. There's an easy way to check that:

`wc longText.txt`

The `wc` command gives us the 'word count' - among some other things.

```shell
; wc longText.txt
8     492    3003 longText.txt
```

You can see that this command gives us back 3 numbers: `8 - 492 - 3003`. These are the line, word and character counts for the longText.txt file. Yours might be a little different depending on how many new lines you have in your file.

And again, you can use pipes to count the output of other programs. How many README files do we have in the home directory?

`find ~ -name "*.txt" -print | grep README | wc -l`

First, find will find all text files, then grep will select those that have `README` in their name and `wc -l` will count how many lines were given to it by grep. On my computer, I have 12 README files in my home directory.

[Go to the next section](./20_permissions.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/19_counting_words.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/19_counting_words.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/19_counting_words.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/19_counting_words.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/19_counting_words.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
