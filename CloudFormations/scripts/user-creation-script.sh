#!/bin/sh
if !["$UID"=0]; then
    echo "Hey, I require to be run with sudo!"
fi

else
    for i in 'more new-username-file.txt'
    do
    echo $i
    echo $i |pwgen -y 15| passwd --stdin "$i" >> new-username-and-password-file${date}.txt
    echo; echo "User $USER's password changed!"
    sudo groupadd -f devops  #the f checks to see if devops exists before creating it
    sudo chmod g+rwx /home 
    touch welcome.txt
    
    echo "Welcome to the company $USER" >> welcome.txt
    sudo cp welcome.txt /home/$USER/
    done
fi

chmod 755 new-username-file.txt
./newusername.txt