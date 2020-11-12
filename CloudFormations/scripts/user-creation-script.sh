#!/bin/sh
if["$UID"!=0]; then
    for i in 'more new-username-file.txt'
    do
    echo $i
    adduser $i 
    echo "welcomeToFHL" | passwd --stdin "$i"
    done
fi



chmod 755 new-username-file.txt
./newusername.txt