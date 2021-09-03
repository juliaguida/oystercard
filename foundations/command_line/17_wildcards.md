## Wildcards
As our programs get larger and we have to start wading through large numbers of files, the time will come when we want to have more control over how we look at the system. Let's look at a helpful way to do this.

If we look again at the contents of our `SomeDir` folder, you should see this:

```shell
; ls
combined
longText.txt
newerFile
someFile
someMoreText
someText

```

We have 1 text file and 6 other files. With only 7 files, finding what we want is pretty easy. But what if we had 7,000 files? Wildcards can help us select groups of files that meet a criteria.

This is how you'd list just the text files:

`ls *.txt`

The asterisk acts as a wildcard, telling the computer to only show you the files that end in `.txt`. You can use the wildcard in various scenarios. Take a guess at what each of these do before running them:

`ls new*.txt`  
`ls *`  
`ls *n*`

And obviously, you can use asterisks with any command, not just `ls` because that's the built-in feature of the command-line (or the bash shell, strictly speaking), not of any particular command.

Another way to list specific files is by using the `find` command. It looks like this:

`find . -name "*.txt" -print`

This command works a lot just like normal English. It's saying: 'find all files, starting with the current directory, with any name that ends in `.txt` and print it to the screen.' Another cool feature of the `find` command is that, if you have additional directories inside the directory you search in, it will go into those directories as well and continue the search. Therefore, this is how we'd print out every text file in our home directory. You might be asked to allow Terminal permission to access various folders to perform the search, additionally if you see a number of lines with the output 'Operation not permitted' you need to grant Terminal Full Disk Access privileges which you can read about here.

`cd ~`  
`find . -name "*.txt" -print`

The first command you already know - to change directories into your home directory. The second command is just using the find command again to tell it to go through and print all text files in the Home directory, plus any other directories inside your home directory.

So, knowing everything that we know now, how could you create a text document that lists every PDF file in your Downloads directory? (You might not have `.pdf` files in your Downloads folder so choose something you do have and give it a try to understand how it works.)

`cd ~/Downloads`  
`find . -name "*.pdf" -print > myPdfs.txt`

<details>
  <summary>Cloud9</summary>
  
You of course won't have a Downloads directory or any `.pdf` files in your environment. Instead, save the list of `.txt` files you found above to a `myTxts.txt` file.
</details>

Both wildcards and `find` are useful for displaying specific files, but what if we want to look inside those files? If you remember from earlier, we've created a few text files in `SomeDir`. What if I wanted to look at only those files with the word 'binary' inside the file? That's where grep comes in.

`grep binary combined`

```shell
; grep binary combined
Those who understand binary and those who don't

```

The `grep` command takes two parameters: the first is what you want to search for (in this case, the word 'binary') and the second is what files you want to search through (in this case, the file 'combined').

It's also possible to use a pipe to redirect output to grep, so that it works with the text from the input stream instead of the file we gave it as an argument. Let's print all text files in the home directory that have `README` in their name.

`find ~ -name "*.txt" -print | grep README`

This command will find all files but instead of printing them, all filenames will be redirected to grep. Grep, in turn, will only print those filenames that include `README`. Try it to see how it works (don't forget the quotes around `*.txt`, they are important).

[Go to the next section](./18_regular_expressions.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/17_wildcards.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/17_wildcards.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/17_wildcards.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/17_wildcards.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/17_wildcards.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
