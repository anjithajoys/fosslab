#!/bin/bash
#about os and vertion, release number, kernel version
echo $(lsb_release -a)
#to show all available shells
cat /etc/shells
#to show mouse settings
echo $(xinput --list --short)
#to show computer CPU information like processor type, speed etc
echo $(sudo dmidecode -t 4)
#to show memory information
echo $(free -m)
#to hard disk information like size of hard-disk, cache memory, model etc
echo $(sudo dmidecode -t memory)
#file system (mounted)
echo $(sudo fdisk -1)




