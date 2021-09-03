## Vim
We suggested using VS Code earlier but we won't always have the luxury of using a graphical user interface. When connecting to a remote system, a shell (text-only command-line) will be the only interface you'll often have. Even worse, you may not have user-friendly text-based editors (e.g. VS Code) installed when you need to make a quick change. However, you'll need to look hard to find a system that doesn't have vi or vim (**Vi** i**m**proved) installed.

This editor may seem very unfriendly at first, but if it were really unusable, it wouldn't be so popular among developers and system administrators. From a practical perspective, it's worth knowing the basics because that's the editor you can always rely on, on any unix-based system.

To create a new file or open an existing file, just pass it as an argument.

`vim myFile`

You'll see the empty file first.

```shell
▮
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
"myfile" [New File]
```

You can't type anything yet, though, because the editor is not waiting for your text input. By default, it will be in a 'command' mode when vim waits for a command and not an 'insert' mode when it's expecting you to enter text. Right now you could give it one of many commands:

* i – insert text before cursor
* o – open a new line after the current one
* dd – delete current line

and dozens of others.

Let's suppose we want to save a file with the text 'Hello, world!' inside. Press `i` once. The editor will switch into the insert mode:

```shell
▮
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
-- INSERT --
```

Now whatever you type will be actually entered as text. Type 'Hello, world!'. How do you save it now? Whatever you press now will be taken not as a command (save, exit, etc.) but as text. To get back to the command mode press `Esc` key. Now you're back in the command-mode. Now we can tell vim to save the file. Press colon (`:`) and then `w` (`w` stands for 'write') `:w`

```shell
Hello, World!
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
:w▮
```

After you press Enter, the file will be written and you'll see the corresponding message.

```shell
Hello, World!▮
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
"myFile" [New] 1L, 14C written
```

Now we need to quit the editor. Type `:q` followed by `Enter`. (If you needed to quit without saving changes, you'd need to do `:q!`).

This is the absolute minimum you need to know to make a basic edit using vim. Try using [this cheat sheet](https://devhints.io/vim) to practice using vim on a few files. We'd recommend not spending more than 15 minutes playing around with a few of these commands.

[Go to the next section](./30_learning_objectives.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/29_vim.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/29_vim.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/29_vim.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/29_vim.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/29_vim.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
