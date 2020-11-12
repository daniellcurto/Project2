#!/bin/sh
for i in 'more new-username-file.txt'
do
echo $i
echo "welcometo"
adduser $i 
done

chmod 755 new-username-file.txt
./newusername.txt