## Processes
Every program running on the system is composed of at least one 'process'. A process is simply some code that is being executed (that hasn't finished yet). Simple programs usually launch just one process but sometimes a program can launch several processes in parallel.

You can see what processes you launched by using the `ps` command.


```shell
; ps
  PID TTY           TIME CMD
78153 ttys000    0:01.15 -zsh
48391 ttys001    0:00.39 -zsh
23380 ttys003    0:00.28 -zsh

```

I have quite a few terminal windows open in parallel, so I have a `zsh` process for every one of them. If you use the `x` flag, you'll see all processes running on your computer.

`ps x`

By redirecting the output to grep you can filter out the processes you need, e.g. if you want to only see `zsh` processes running on the system:

`ps x | grep zsh`

How could you use `wc` command that we discussed earlier to count their number?

[Go to the next section](./29_vim.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/28_processes.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/28_processes.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/28_processes.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/28_processes.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/28_processes.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
