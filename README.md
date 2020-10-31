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
* Had to do sudo apt install git to install the git server
* Had to do sudo apt update to update the git server to get the latest packages
* Had to do sudo apt upgrade to upgrade the git server to the latest packages of git
* Had to do sudo apt autoclean to clean any remaining repositories that no longer exists
* Had to do sudo apt autoremove to remove any old versions of packages
* 