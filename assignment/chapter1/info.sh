#Script to print the system info

#!/bin/bash
source function.sh 
#-----------------------------------------------------------------------------------------------------------------------------#
#-------------------------------------------------------BEGINNING OF CODE-----------------------------------------------------#

#choosing the operation
echo "Enter the option from 1-13 to get system info
1.Currently logged user
2.your shell directory
3.home directory
4.OS name and version
5.current working directory
6.number of users logged in
7.show all available shells in your system
8.hard disk information
9.cpu information
10.memory information
11.file system information
12.currently running process"

#reading the choice
echo "Enter choice:"
read C

#
case $C in
1) echo " Currently logged user is `whoami`";;
2)echo " Your shell directory is  $SHELL";;
3)echo " home directory is $HOME";;
4)echo "OS name and version is `uname -ov | cut -d '~' -f 2 | cut -d ' ' -f 1,9` ";;
5)echo "Current working directory is `pwd`";;
6)echo "Number of users logged in are `users | wc -w`";;
7)echo "Available shells are `cat /etc/shells`";;
8)echo "hardware informatiion is `sudo lshw`";;
9)echo "cpu information `cat /proc/cpuinfo`";;
10)echo "memory information `cat /proc/meminfo`";; 
11)echo "file system information `df -H`";;
12)echo "currently running process `ps`";;
*) echo "invalid input"
esac



cal info.sh


#----------------------------------------------------------END OF CODE--------------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------------------------#
