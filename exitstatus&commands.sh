#!/bin/bash
USERID=$(id -u)
#check if user is root or not
if [ $USERID -ne 0 ]; then
    echo "you are not a root user"
    exit 1
fi

yum install git -y

if [ $? -ne 0 ]: then
    echo "git installation failure"
    exit 1
else
    echo "installing git is successfull"
fi
