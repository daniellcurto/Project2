#!/bin/sh
for i in 'more new-username-file.txt'
do
echo $i
adduser $i 
echo "welcomeToFHL" | passwd --stdin "$i"
done

chmod 755 new-username-file.txt
./newusername.txt