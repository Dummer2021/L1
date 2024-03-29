Original from https://www.tecmint.com/35-practical-examples-of-linux-find-command/

1. **Find Files Using Name in Current Directory**
Find all the files whose name is techmint.txt in a current working directory.
```
find . -name techmint.txt
```
```
./techmint.txt
```


2. **Find Files Under Home Directory**
Find all the files under /home directory with the name techmint.txt.
```
find /home -name techmint.txt
```
```
/home/techmint.txt
```


3. **Find Files Using Name and Ignoring Case**
Find all the files whose name is techmint.txt and contains both capital and small letters in /home directory.
```
find /home -iname techmint.txt
```
```
./techmint.txt
./Techmint.txt
```


4. **Find Directories Using Name**
Find all directories whose name is Techmint in / directory.
```
find / -type d -name Techmint
```
```
/Techmint
```


5. **Find PHP Files Using Name**
Find all php files whose name is techmint.php in a current working directory.
```
find . -type f -name techmint.php
```
```
./techmint.php
```


6. **Find all PHP Files in the Directory**
Find all php files in a directory.
```
find . -type f -name "*.php"
```
```
./techmint.php
./login.php
./index.php
```

7. **Find Files With 777 Permissions**
Find all the files whose permissions are 777.

```
find . -type f -perm 0777 -print
```

8. **Find Files Without 777 Permissions**
Find all the files without permission 777.
```
find / -type f ! -perm 777
```


9. **Find SGID Files with 644 Permissions**
Find all the SGID bit files whose permissions are set to 644.
```
find / -perm 2644
```

10. **Find Sticky Bit Files with 551 Permissions**
Find all the Sticky Bit set files whose permission is 551.
```
find / -perm 1551
```


11. **Find SUID Files**
Find all SUID set files.
```
find / -perm /u=s
```

12. **Find SGID Files**
Find all SGID set files.
```
find / -perm /g=s
```

13. **Find Read-Only Files**
Find all Read-Only files.
```
find / -perm /u=r
```

14. **Find Executable Files**
Find all Executable files.
```
find / -perm /a=x
```

5. **Find Files with 777 Permissions and Chmod to 644**
Find all 777 permission files and use the chmod command to set permissions to 644.
```
find /home -type f -perm 0777 -print -exec chmod 644 {} \;
```

16. **Find Directories with 777 Permissions and Chmod to 755**
Find all 777 permission directories and use the chmod command to set permissions to 755.
```
find /home -type d -perm 777 -print -exec chmod 755 {} \;
```

17. **Find and remove single File**
To find a single file called techmint.txt and remove it.
```
find . -type f -name "techmint.txt" -exec rm -f {} \;
```

18. **Find and remove Multiple File**
To find and remove multiple files such as .mp3 or .txt, then use.
```
find . -type f -name "*.txt" -exec rm -f {} \;
```
or
```
find . -type f -name "*.mp3" -exec rm -f {} \;
```

19. **Find all Empty Files**
To find all empty files under a certain path.
```
find /tmp -type f -empty
```

20. **Find all Empty Directories**
To file all empty directories under a certain path.
```
find /tmp -type d -empty
```

21. **File all Hidden Files**
To find all hidden files, use the below command.
```
find /tmp -type f -name ".*"
```

22. **Find Single File Based on User**
To find all or single files called techmint.txt under / root directory of owner root.
```
find / -user root -name tecmint.txt
```

23. **Find all Files Based on User**
To find all files that belong to user tech under /home directory.
```
find /home -user tech
```

24. **Find all Files Based on Group**
To find all files that belong to the group Developer under /home directory.
```
find /home -group devops
```

25. **Find Particular Files of User**
To find all .txt files of user techmint under /home directory.
```
find /home -user tech -iname "*.txt"
```

26. **Find Last 50 Days Modified Files**
To find all the files which are modified 50 days back.
```
find / -mtime 50
```

27. **Find Last 50 Days Accessed Files**
To find all the files which are accessed 50 days back.
```
find / -atime 50
```

28. **Find Last 50-100 Days Modified Files**
To find all the files which are modified more than 50 days back and less than 100 days.
```
find / -mtime +50 –mtime -100
```

29. **Find Changed Files in Last 1 Hour**
To find all the files which are changed in the last 1 hour.
```
find / -cmin -60
```

30. **Find Modified Files in Last 1 Hour**
To find all the files which are modified in the last 1 hour.
```
find / -mmin -60
```

31. **Find Accessed Files in Last 1 Hour**
To find all the files which are accessed in the last 1 hour.
```
find / -amin -60
```

32. **Find 50MB Files**
To find all 50MB files, use.
```
find / -size 50M
```

33. **Find Size between 50MB – 100MB**
To find all the files which are greater than 50MB and less than 100MB.
```
find / -size +50M -size -100M
```

34. **Find and Delete 100MB Files**
To find all 100MB files and delete them using one single command.
```
find /home/ -type f -size +100M -exec rm -f {} \;
```

35. **Find Specific Files and Delete**
Find all .mp3 files with more than 10MB and delete them using one single command.
```
find /home/ -type f -name *.mp3 -size +10M -exec rm {} \;
```
