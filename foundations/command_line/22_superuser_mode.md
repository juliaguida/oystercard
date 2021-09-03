## Superuser mode
Some actions on the computer require administrative (or superuser) privileges. The name of the superuser is `root`. If you list the /etc directory where many of the system configuration files are stored, you'll see that all of them are owned by root.

```shell
; ls -l /etc/
total 912
drwxr-xr-x   4 root  wheel     128  1 Jan  2020 racoon
-rw-r--r--   1 root  wheel    1560  1 Jan  2020 rc.common
-rw-r--r--   1 root  wheel    5264  1 Jan  2020 rc.netboot
lrwxr-xr-x   1 root  wheel      22  1 Jan  2020 resolv.conf
-rw-r--r--   1 root  wheel       0  1 Jan  2020 rmtab
-rw-r--r--   1 root  wheel    1735  1 Jan  2020 rpc
-rw-r--r--   1 root  wheel     891  1 Jan  2020 rtadvd.conf
drwxr-xr-x   7 root  wheel     224  1 Jan  2020 security
-rw-r--r--   1 root  wheel  677972  1 Jan  2020 services
-rw-r--r--   1 root  wheel     189  1 Jan  2020 shells
drwxr-xr-x   4 root  wheel     128  1 Jan  2020 snmp
drwxr-xr-x   5 root  wheel     160  1 Jan  2020 ssh
drwxr-xr-x   6 root  wheel     192  1 Jan  2020 ssl
-r--r-----   1 root  wheel     257  1 Jan  2020 sudo_lecture
-r--r-----   1 root  wheel    1563  1 Jan  2020 sudoers
drwxr-xr-x   2 root  wheel      64  1 Jan  2020 sudoers.d
-rw-r--r--   1 root  wheel      96  1 Jan  2020 syslog.conf
-rw-r--r--   1 root  wheel    1316  1 Jan  2020 ttys
drwxr-xr-x   5 root  wheel     160  1 Jan  2020 uucp
drwxr-xr-x   6 root  wheel     192  1 Jan  2020 wfs
-rw-r--r--   1 root  wheel       0  1 Jan  2020 xtab
-r--r--r--   1 root  wheel     255  1 Jan  2020 zprofile
-r--r--r--   1 root  wheel    3094  1 Jan  2020 zshrc
-rw-r--r--   1 root  wheel    9296  1 Jan  2020 zshrc_Apple_Terminal

```

A superuser has all rights and permissions to all programs. In other words, the superuser can do any action on the computer. Working as a root is dangerous since entering a wrong command or making a one-character typo can cause significant damage to the system. For example, there's a world of difference (or just one dot) between deleting all files in the current directory

`rm -rf ./*`

and deleting all files on your hard-drive, ignoring read-only flags and avoiding warnings

`rm -rf /*` **(Don't try this at home!)**

Therefore, it's considered bad practice to work as a root on a permanent basis. Instead, you use a normal account with limited privileges (e.g. you can't do `rm -rf /*` and other dangerous things) but switch into a superuser mode only as necessary.

You can execute a command as a superuser by prefixing it with `sudo`. For example, if you want to delete a file you haven't got permissions to delete and you know the superuser password, you can

`sudo rm inaccessibleFile`

It will ask you for the password and then the command will be executed with superuser privileges.

[Go to the next section](./23_environment.md)


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/22_superuser_mode.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/22_superuser_mode.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/22_superuser_mode.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/22_superuser_mode.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=foundations/command_line/22_superuser_mode.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
