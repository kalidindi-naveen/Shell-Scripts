#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] # ! denotes opposite
then
    echo -e "$R Source directory: $SOURCE_DIR does not exists. $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE 

# delete log files more than 14 days, only .log extensions not anyother files

# [root@ip-172-31-16-8 ~]# sh old-logs.sh 
# Source directory: /tmp/shellscript-logs does not exists. 
# find: ‘/tmp/shellscript-logs’: No such file or directory
# Deleting file: 

# source-directory
# search .log files and more than 14 days old
# rm -rf

# find . -type f -mtime +14
# ,
# ;

# find: The command itself for searching files.
# .: The starting directory for the search (current directory).
# -type f: Specifies that you are looking for files (not directories or other types of files).
# -mtime +14: Specifies the criteria for modification time. It looks for files that were last modified more than 14 days ago.