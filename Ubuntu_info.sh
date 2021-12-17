#!/bin/bash
#this is a script designed to grab basic information from an Ubuntu Linux in Bash Shell
echo -e "The date is $(date)\n"
echo -e "User Name is $(uname)\n
echo -e "Machine IP is $(ip a | grep "inet" | head -2 | tail -1)"\n
echo -e "Hostname is $(hostname)\n"
echo -e "DNS server is $(cat /etc/resolv.conf | grep nameserver)\n"
echo -e "Memory info is \n$(free)\n"
echo -e "CPU info: $(lscpu | grep CPU)\n"
echo -e "Disk usuage: $(df -h | head -4)\n"
echo -e "Logged on users: $(who -a)"
if ask "Would you like to know more?"; then
	echo "Yes"
else
	echo "No"

fi

if ask "Would you like to log this?" Y; then
	echo "Yes"
else
	echo "No"
fi

if ask "Would you like to log this?" N; then
	echo "Yes"
else
	echo "No"
fi

if ask "Would you like to log this?"; then
	said_yes
fi
then
	echo "Logging Ubuntu_info Script" >> /var/log/pc_checkup_log

if ask "Would you like to log this?"; then
	said_no
fi
then
	echo "Have a nice human operator. Thanks for using" $(uname -a)n\