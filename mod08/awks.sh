#!/bin/bash

awk 'BEGIN { FS=":"; print "User\t\t\tUID\tGID\t\tHome\t\t\tShell\n\
----------------------------------------------------------------------------------"; } \
    {printf  "%-21s %5d %7d %-30s %-20s\n", $1,$3,$4,$6,$7} \
    END { print "\
----------------------------------------------------------------------------------\n\
File Complete" }' /etc/passwd