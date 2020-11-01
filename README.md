## 10/30/2020 VPC creation
* Created VPC via wizard using all default settings
* Associated an ip address pool of 10.0.0.0/16
VPC id: vpc-0828a62b9612fe901
![screenshot of VPC](/project2pictures/VPC_created.jpg)

## 10/30/2020 Linux server creation
* Created a linux server with default rules with the exception of instance type medium
* I also configured it to connect a private ssh key called DESIGN_OF_INFORMATION_TECHNOLOGY.pem
![screenshot of Linux](/project2pictures/instance_of_linux_server.jpg)

## 10/30/2020 elastic IP address 
* Created an elastic ip address that wil associated with the Linux server
* Based off of instructions found in Project 2
* Did everything by default, with a public ip address of 34.236.62.38 and a private ip address of 10.0.0.25.

## 10/30/2020 elastic IP address assiciated with server
* Associated elastic ip address with server
![screenshot of associated elastic ip address with server](/project2pictures/elastic_ip_to_server.jpg)

## 10/30/2020 Configured VPC, utilized Security Group to edit inbound ports for our services, traffic on 10.0.0.0/16
*The company wanted VPC to be able to
be talked to through ssh 10.0.0.0/16 traffic only for security purposes
![screenshot of allowing ssh through security group on VPC](/project2pictures/allow_ssh_vpc.jpg)

## October 30, 2020 Turned off the instance of OpenLDAP on Amazon for the night
* Based off the fact that the company does not see the need for the OpenLDAP to be on all night

## October 31, 2020 Set up my git server
* Put the public key for the git server on my ubuntu version on Windows under the file named demo.pem
* Logged into git using 
* Based off of instructions from instructor in the October 26, 2020 lecture

## October 31, 2020 get rid of Ubuntu server on Amazon
* Wasn't able to access git serer

## October 31, 2020 created a new instance of Ubuntu on Amazon for my git server
* Chose the name of the OS on the next bullet point for my OS as that was what my professor went with
* Ubuntu Server 20.04 LTS (HVM), SSD Volume Type - ami-0dba2cb6798deb6d8 (64-bit x86) / ami-0ea142bd244023692 (64-bit Arm)
* Chose t2.medium for instance type as that was a requirement for this project
* Chose the 3120-VPC for network requirement
* Port 22 is not open. Will have to change that in the VPC security protocol later
* Paired the DESIGN_OF_INFORMATION_TECHNOLOGY.pem public key with this instance of ubuntu
* changed pet name to 3120-Instance-Demo

## October 31, 2020 change security protocols in VPC
* allowed traffic to come from any network (0.0.0.0/0)through SSH port 22 as I am right now
at someone else's house right now and I can't
tie it this system to a specific public ip address.


## October 31,2020 associate public ip address with ubuntu instance
* used the public ipv4 address from the previous ubuntu instance 34.236.62.38 and a private ipv4 address of 10.0.0.117

## October 31, 2020 finish building git server
* Had to do sudo apt install git to install the git server
* Had to do sudo apt update to update the git server to get the latest packages
* Had to do sudo apt upgrade to upgrade the git server to the latest packages of git
* Had to do sudo apt autoclean to clean any remaining repositories that no longer exists
* Had to do sudo apt autoremove to remove any old versions of packages
* Had to do sudo reboot to get the git server to use the latest version of git
* Had to do sudo apt install openssh-server to create a new openssh-server
* Did sudo adduser git to create a new user called git with password: password
* Everything else was default information for adduser git
* Used su git with the git password to enter git
* Used cd ~ to switch to get to git@ip-10-0-0-117:~/.ssh
* Used cd .ssh to switch to folder called .ssh
* Found out .ssh does not exist, so had to use mkdir .ssh to make it
* used cd .ssh to switch to folder .ssh
* Used ls to see if authorized_keys exists, it does not
* Used touch authorized_keys to create a file called authorized_keys
* According to the lesson, we are supposed to have at least one public key in the authorized_keys file. The folowing steps are how I got the public key
* On my local machine (daniel@DANGRAYLAPTOP), I typed in the following commands
    * ssh-keygen -t rsa
    * Set default for each option by typing in "Enter" each time
    * After having to rebuild my git server after a fluck I di the following
    * I did vim authorized-keys and pasted the new public key from my local ubuntu machine

* I can now ssh straight into git using
    * ssh git@34.236.62.38

* to copy the demo file from the professor, I have to use git init --bare 3120/demo1028.git
* to clone the repository from the professor, I have to use git clone git@35.153.218.176:3120/demo1028.git