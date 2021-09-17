## Tailing files
We can view the last few lines of a file just as easily with:

`tail -3 longText.txt`

```shell
; tail -3 longText.txt
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.    
```

`tail` also has a really useful parameter that it's worth mentioning: `-f`. When we move along to actually running programs, you'll often want to watch the log of what's happening behind the scenes in your programming - the only problem is that new lines will continually be added to the file you are viewing. To see these new lines as they are added, you can use the `-f` parameter with `tail` like this:

`tail -f log.txt`

macOS, the operating system on the Mac, uses a number of log files. You can peek at what your computer is doing by running

`tail -f /private/var/log/system.log`

<details>
  <summary>Cloud9</summary>
  
You won't be able to access this system log on your Cloud9 environment.
</details>

First, you'll see the last 10 messages. If you quit or start some application, your Terminal will be updated with new messages describing what's going on. To stop tailing the log, press `Ctrl-C`.

[Go to the next section](./14_getting_help.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/13_tailing_files.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/13_tailing_files.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/13_tailing_files.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/13_tailing_files.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/13_tailing_files.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
