1. Соберите статистику подключения по ssh, оформите ее в виде таблицы и отправьте файл на сервер тренера.

Статистику подключений необходимо выгрузить из /var/log/secure

>подсказка:
>`sudo cat /var/log/secure|grep Accept|awk -F ' ' '{printf "%3s %3s %-10s %-10s\n", $1,$2,$3,$4,$10,$11}'`
> Для получения вывода с заголовками можно использовать пример 
>
```ini
Output
User		UID		GID		Home		Shell
--------------
root 		 0 		 0 		 /root 		 /bin/bash
daemon 		 1 		 1 		 /usr/sbin 		 /bin/sh
bin 		 2 		 2 		 /bin 		 /bin/sh
sys 		 3 		 3 		 /dev 		 /bin/sh
sync 		 4 		 65534 		 /bin 		 /bin/sync
. . .
---------
File Complete
```
>`awk 'BEGIN { FS=":"; print "User\t\tUID\t\tGID\t\tHome\t\tShell\n--------------"; } 
{print $1,"\t\t",$3,"\t\t",$4,"\t\t",$6,"\t\t",$7;} END { print "---------\nFile Complete" }' /etc/passwd`
