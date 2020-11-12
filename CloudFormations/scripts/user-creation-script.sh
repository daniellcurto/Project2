#!/bin/sh
if !["$UID"=0]; then
    echo "Hey, I require to be run with sudo!"
fi

else
    for i in 'more new-username-file.txt'
    do
    echo $i
    adduser $i 
    echo "welcomeToFHL" | passwd --stdin "$i"
    done
fi

chmod 755 new-username-file.txt
./newusername.txt