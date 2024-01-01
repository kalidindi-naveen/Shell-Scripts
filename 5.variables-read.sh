#!/bin/bash
echo "Please enter your username:: "
# if give `read USERNAME` it will print the username in CLI
# for `read -s USERNAME` it wont print the username in CLI, -s=secure
read -s USERNAME 
echo "Please enter your Password:: "
read -s PASSWORD
echo "Username is: $USERNAME, Password is: $PASSWORD"