#!/bin/sh
if !["$UID"=0]; then
    echo "Hey, I require to be run with sudo!"
fi

else
    for i in 'more new-username-file.txt'
    do
    echo $i
    echo $i |pwgen -y 15| passwd --stdin "$i" >> new-username-and-password-file${date}.txt
    echo; echo "User $username's password changed!"
    sudo groupadd -f devops  #the f checks to see if devops exists before creating it
    echo "Welcome to the FHL family $user" >> /etc/skel/welcome.txt
    done
fi

chmod 755 new-username-file.txt
./newusername.txt