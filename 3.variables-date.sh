#!/bin/bash
DATE=$(date)
echo "Script started executing: ${DATE}"

DATE2=$(date + %F)
echo "Script started executing: ${DATE2}"

# o/p:-
# Script started executing: Sat Dec 30 05:43:56 PM UTC 2023
# Script started executing: 2023-12-30