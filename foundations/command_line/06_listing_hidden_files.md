## Listing hidden files (using switches)
Earlier, we listed the public files in the 'Desktop' folder, these are the files that are also visible in the user interface. But, did you know that some directories contain files and folders that are normally hidden on the user interface?

Sometimes we’ll need to access these hidden files, using:

`ls -lA`

This shows us all of the hidden files as well:

```shell
; ls -lA
total 16
-rw-r--r--@ 1 username  staff  6148 11 Aug 16:05 .DS_Store
-rw-r--r--  1 username  staff     0  6 Oct  2020 .localized
-rw-r--r--  1 username  staff     0 24 Mar 15:46 lovelace.jpg
-rw-r--r--  1 username  staff     0 24 Mar 15:48 makers.txt
-rw-r--r--  1 username  staff     0 24 Mar 15:47 turing.html

```

In addition, it shows them in the 'long' format, that is, with extra information (size, creation date, owner, etc). The `-lA` parameter is actually a combination of two switches. We could have written the same command like this:

`ls -l -A`

However, if you're specifying multiple switches, you can combine them into one:

`ls -lA`

In this case, `-l` stands for 'long format', and `-A` stands for all files.

### Hidden files
Some files are hidden by default because they are used by the operating system and the users don't need to access them in most cases. However, `ls -lA` exists precisely because you'll want to access them on some occasions.

[Go to the next section](./07_creating_files.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/06_listing_hidden_files.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/06_listing_hidden_files.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/06_listing_hidden_files.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/06_listing_hidden_files.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/06_listing_hidden_files.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
