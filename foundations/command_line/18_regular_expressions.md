## Brief mention of regular expressions (Regex)
Strictly speaking, grep is taking not a string, but a regular expression as an input.

A regular expression, or regex, describes the pattern that you are looking for. It's similar to wildcards but orders of magnitude more powerful. For example, this command would look for all files in your Documents directory that have numbers in the name or path. You can't do this with wildcards but you can with regular expressions.

`find ~/Documents -name "*" -print | grep "\d\+"`

(You may need to use `"\d+"` if this command doesn't work on your machine.)

<details>
  <summary>Cloud9</summary>
  
As you don't have a Documents folder, we'll search your whole home directory (~/) for all filenames containing numbers using `find ~ -name "*" -printf "%f\n" | grep "[0-9]"`
</details>

If you want to have a play with regular expressions and learn a bit more, [RegRxr](https://regexr.com/) is a great tool for that.

[Go to the next section](./19_counting_words.ed.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/18_regular_expressions.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/18_regular_expressions.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/18_regular_expressions.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/18_regular_expressions.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/18_regular_expressions.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
