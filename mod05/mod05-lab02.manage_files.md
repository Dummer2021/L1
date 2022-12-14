Before start lab:
```
useradd sa2;passwd sa2
```

1. On one line create three files and list the directory output. The file names should be file1, file2, and file 3.
```
touch file1; touch file2; touch file3; ls
```
1. Write the output of a command to list ALL files in the home directory of your user to a file called "directory.out".
```
ls -a > directory.out
```

    You can also list the files using a wild card since the first part of each file we created was "file". Do so by ls file* > directory.out

1. List all the three files you've created above. Then move those files into a new directory called "myfiles"
```
ls file*; mkdir myfiles; mv file* myfiles/
```
1. Create a compressed archive of your 'myfiles" directory. Then using the tar command and gzip compression option, create a compressed archive of myfiles/. Once done, verify the contents of the file by listing the contents to the console.
```
tar -cvzf myfiles.tar.gz myfiles/

tar -ztvf myfiles.tar.gz
```
5. Create a soft link of the file '/etc/ld.so.conf' in your home directory. Type ls -al to view the link has been created. Then delete the link. Verify whether the original file was deleted or not.
```
ln -s /etc/ld.so.conf ld.so.conf

ls -al

rm ld.so.conf

ls /etc/ | grep ld.so.conf
```
6. Create a file called "testhardlink.txt". Create a hard link to that file called "testhardlinkupdate.txt" and then update the contents of that file. Display the contents of the original file and indicate whether they match or not.
```
touch testhardlink.txt

ln testhardlink.txt testhardlinkupdate.txt

echo "random text" > testhardlinkupdate.txt

cat testhardlink.txt (Should show your "random text)"
```
7. Create a new directory in your home directory called "course3_video4". In one command, create the following path:
```
course3_video4/my/new/directory/appeared/like/magic

mkdir course3_video4

mkdir -p course3_video4/my/new/directory/appeared/like/magic

ls -R course3_video4
``` 
This will show us what just happened.

8. Change to the 'magic' directory as created above and create a text file called "myfile.txt" with some text content in it. Change the group ownership of the file you just created, assign the group 'wheel'. Remove the entire directory tree we just created.
```
cd course3_video4/my/new/directory/appeared/like/magic

echo "some text" > myfile.txt

chown sa2 myfile.txt

cd ~/

rm -rf course3_video4
```
9. Create a file called "myfile.sh". Give it world readable read, write and execute permissions. Assign the 'wheel' group as the default group for that file. Protect the file from being deleted by anyone not a member of the wheel group WITHOUT changing the default attributes of the file (using one of the special permission bits from the video).
```
touch myfile.sh

chmod 777 myfile.sh

chown sa2 myfile.sh

chmod 1777 myfile.sh (or chmod +t)
```
10. Use the 'chmod' command to change the attribute of the script above to run using the same GROUP permissions as the group owner.
```
chmod 3777 myfile.sh (or chmod g+s) 
```
Note: 3 in '3777' incorporates both the setgid bit (2), and the sticky bit (1).

11. Create a new group called 'linuxacademy' on your server. Change the default group that all files created by your user will be owned by to this new group. Create a new file that demonstrates the ownership is changed to the 'linuxacademy' group upon creation.
```
sudo groupadd linuxacademy

sudo usermod -g linuxacademy sa2

logout of the system and log back in

touch test

ls -al
```
12. Display the default 'umask' permissions on your system. Change the default umask so that files have world read/write/ and folders have world read/write/execute only. Create a new file that demonstrates that change. Change the attribute of that file so that the time it is modified is never updated.
```
umask

umask 000 (666-000) = 666 which is read/write for files and (777-000) = 777 which is read/write/execute for dir

touch newfile

chattr -A newfile
```
13. Using one of the special directories from the video, output the following information to your lab file:

 

    Kernel version and kernel compilation
    Number of CPUs in the system
    A listing of supported filesystems
    Running processes

 

    sudo cat /proc/version

    sudo cat /proc/cpuinfo or sudo ls -al /sys/devices/system/cpu

    sudo cat /proc/filesystems

    sudo ls -al /proc

 

14. Finding Files In Linux Using Find, Locate, Whereis, Which and Type

Using two different methods, find the following files or directories:

    /etc
    ld.so.conf
    bash
    /sbin
    Mount

 

    locate /etc

    locate ld.so.conf  or find / -name 'ld.so.conf'

    which bash

    locate /sbin

    whereis mount  or type mount