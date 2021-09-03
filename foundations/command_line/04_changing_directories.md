## Changing directories
Okay, the `~` home directory is great, but what if I want to access other folders?

`cd Desktop`

<details>
  <summary>Cloud9</summary>
  
  You won't have a Desktop folder on Cloud9, but we can quickly create one and create a few dummy files inside for the next few lessons by running `mkdir Desktop/ && touch ./Desktop/makers.txt && touch ./Desktop/turing.html` You should now see a Desktop folder in the left-hand navigation bar. We'll learn what these commands do a little later.
</details>

The `cd` stands for 'change directory' and 'Desktop' tells us to move to the Desktop folder.

`cd ..`

Here the `..` moves us back up one directory to the parent directory. Just for future reference, a single dot `.` represents the directory I'm currently in and `..` represents the parent directory. Desktop's parent directory is usually the home directory and, as mentioned before, this is represented as `~`:

```shell
; cd Desktop
; ls
lovelace.jpg
makers.txt
turing.html
; pwd
/Users/username/Desktop
; cd ..
; pwd
/Users/username

```
[Go to the next section](./05_printing_working_directory.ed.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/04_changing_directories.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/04_changing_directories.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/04_changing_directories.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/04_changing_directories.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=foundations/command_line/04_changing_directories.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
