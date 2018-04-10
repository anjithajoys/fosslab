#!/bin/bash
echo "Hello World"
#logged user and his logname
x=$(logname)
echo "Currently logged user and his logname : $x"
#current shell
echo $SHELL
#home directory
echo $HOME
#operating system type 
x=$(arch) 
echo "Your operating system type : $x"
#current path setting
echo $PATH
#current working directory
echo $pwd
#currently logged number of users
echo $users

 

