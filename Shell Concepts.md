### Shell Scripting (.sh/.aa/.jh/.naveen....)
```
#!/bin/bash -- shebang Notation

shell script == bash script

Execute Script
sh <script-name>.sh
```
### Shell Scripting
```
For Linux OS scripting we use Shell

shell vs python
---------------
Linux -- shell script

linux commands in a file is called shell script

python -- convert code into shell script
```
### variables
```
x=1, y=2, z=3

Note:- DRY -- don't repeat yourself

VARIABLE_NAME=VALUE

PERSON1=Naveen
PERSON2=Praveen

change in a single location will effect everywhere automatically
```
### Data types
```
int, float, string, double, long, char, boolean, array, arraylist, map, set

int -- -33,334 to 33,334
float -- 1.2, 1.4
string -- ramesh
double -- 33.43435
long -- 423742193451405
char -- a, b, c
boolean -- true/false
array -- (ram robert raheem)
arraylist -- (ram robert raheem)
map -- name: sivakumar, tech: devops

----------------------------------------
shell don't care much about data types |
----------------------------------------

FRUITS=("Apple" "Banana" "Mango")
echo "First value: ${FRUITS[0]}" # Apple
echo "Second value: ${FRUITS[1]}" # Banana
echo "Third value: ${FRUITS[2]}" # Mango
echo "All Fruits: ${FRUITS[@]}" # Apple Banana Mango
```
Note:-
```
echo "How many args passed:: $#"
echo "All args passed:: $@"
echo "Script name:: $0"
```
#### previous command success or ??
```
$? -- if success, it has 0 & if failure, not zero
```
```
$NUMBER > 100

$NUMBER -gt 100 -- >
$NUMBER -lt 100 -- <
$NUMBER -ge 100 -- >=
$NUMBER -le 100 -- <=
```
### Functions
```
single task:- can be done in 30 lines/10 lines/...

less lines of code is preferred doing task

function -- code that is repeated again, you can keep in function and call it whenever you want....

FUNCTION_NAME(){
	statements to run
}

VALIDATE(){
	statements to run
}

FUNCTION_NAME -- calling name

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

VALIDATE $? "Installing GIT"

FUNCTION_NAME: VALIDATE
$1: 0/non zero
$2: Installing GIT
```
### Redirections
```
> for redirection

Ex:- ls -ltr > test.log

echo "$(systemctl status nginx)" > temp.log -- by default success output only stores here

STDOUT -- 1 --> success
STDERR -- 2 --> failure
& --> both success and failure

#!/bin/bash
ls -lrt 1>test.log
o/p:- In test.log
    total 4
    -rwxrwxrwx 1 root root 221 Dec 30 17:19 main.bash
    -rwxrwxrwx 1 root root   0 Dec 30 17:19 test.log

#!/bin/bash
lk >test.log
o/p:- In test.log
    --Nothing-- bcs by default it will take successfull commands output only

#!/bin/bash
lk 2>test.log
o/p:- In test.log
    main.bash: line 9: lk: command not found

> -- replace previous output
>> -- append outpout

#!/bin/bash
ls -lrt 1>>test.log == ls -lrt >>test.log
lk 2>>test.log
o/p:-
    total 8
    -rwxrwxrwx 1 root root  41 Dec 30 17:21 test.log
    -rwxrwxrwx 1 root root 235 Dec 30 17:21 main.bash
    main.bash: line 8: lk: command not found

#!/bin/bash
ls -lrt &>>test.log 
lk 2 &>>test.log
o/p:-
total 4
    -rw-r--r-- 1 damner damner 49 Dec 31 10:43 script.sh
    -rw-r--r-- 1 damner damner  0 Dec 31 10:43 test.log
    script.sh: line 3: lk: command not found
```
```
$? -- exit status of previous command
$0 -- you will get script name
$1 -- First args
$2 -- second args
$N -- Nth arg
$@ -- give all args
$# -- number of args
```
```
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
    date is a command in Unix-like operating systems that displays the current date and time.
    %F is a format specifier for the full date in the format YYYY-MM-DD.
    %H is a format specifier for the hour (00-23).
    %M is a format specifier for the minute (00-59).
    %S is a format specifier for the second (00-59).

R="\e[31m"
G="\e[32m"
N="\e[0m"

File Name ??
script-name-<date>.log
LOGFILE="/tmp/$0-$TIMESTAMP.log"
```
### loops
#### for
```
#!/bin/bash
for i in {1..100}
do
    echo "$i"
done
```
```
#!/bin/bash
fruits=("Apple" "Orange" "Banana" "Grapes")
for fruit in "${fruits[@]}"
do
  echo "Fruit: $fruit"
done
```
#### while
```
#!/bin/bash
counter=1
while [ $counter -le 5 ]
do
  echo "Number $counter"
  ((counter++))
done
```
#### break
```
#!/bin/bash
for i in {1..10}
do
  echo $i
  if [ $i -eq 5 ]
  then
    echo "Breaking the loop at $i"
    break
  fi
done
```
#### continue
```
#!/bin/bash
for i in {1..5}
do
  if [ $i -eq 3 ]
  then
    echo "Skipping iteration for $i"
    continue
  fi
  echo "Processing $i"
done
```
#### <: Input Redirection
```
The < symbol is used for input redirection. It takes input from a file and sends it as input to a command.

# Create a file named input.txt with some content
echo "Hello, this is input.txt" > input.txt

# Use input redirection to read the content of input.txt
while IFS= read -r line; do
  echo "Read line: $line"
done < input.txt
```
#### <<: Here Document
```
The << symbol is used for a "here document" or "here doc." It allows you to pass multiple lines of input to a command.

cat << EndOfText
This is line 1
This is line 2
EndOfText
```
#### <<<: Here String
```
The <<< symbol is used for a "here string." It allows you to pass a string as input to a command.

read -r var <<< "Hello, World!"
echo $var

```
#### internal field separator variable
```
#!/bin/bash
IFS=','
# CSV data
csv_data="John,Doe,30,New York
Jane,Smith,25,San Francisco
Bob,Johnson,35,Los Angeles"

while read -r first_name last_name age city; do
  echo "First Name: $first_name"
  echo "Last Name: $last_name"
  echo "Age: $age"
  echo "City: $city"
  echo "-----------------"
done <<< "$csv_data"
```
#### o/p:-
```
First Name: John
Last Name: Doe
Age: 30
City: New York
-----------------
First Name: Jane
Last Name: Smith
Age: 25
City: San Francisco
-----------------
First Name: Bob
Last Name: Johnson
Age: 35
City: Los Angeles
-----------------
```
#### file.sh 
```
while IFS= read -r line
do
    echo "$line"
done < file.txt
```
```
Read a File Line by Line

[ec2-user@ip-172-31-16-8 ~]$ vi file.sh
Hi
This From NK File
Written Using Shell Scripting

[ec2-user@ip-172-31-16-8 ~]$ sh file.sh 
Hi
This From NK File
Written Using Shell Scripting
```

#### loops.sh
```
#!/bin/bash
for i in {1..10}
do
    echo "$i"
done
```
#### Install Package
```
[root@ip-172-31-16-8 ~]# sh install-packages.sh git mysql
You are root user
Installation of git ...  SUCCESS 
Installation of mysql ...  FAILED 
[root@ip-172-31-16-8 ~]# cat /tmp/install-packages.sh-2023-12-30-10-50-32.log 
```
#### delete old log files
```
1. user has to provide source directory
2. action --> archieve/delete
3. if he selects archieve --> where is the destination directory
4. time --> optional, if he gives take it, otherwise 14 days default
5. memory --> optional. if he dont give dont consider, if he gives consider it...

old-logs.sh -s <source-dir> -a <archieve/delete> -d <destination-dir> -t <no-days> -m <memory-in-mb>

algorithm
---------
-s, -a, -d --> check all these inputs, if he dont give tell him the usage....

-s:- source directory exists or not
-d:- destination directory exists or not
-a:- archieve if he dont give destination dir throw error about destination-dir
```
### SED
```
sed -e '1 a I am learning Shell script' <file-name>

-e = temp change
-i = perm change

sed -e '1 i I am learning Shell script' <file-name>

lines update
--------------
sed -e 's/word-to-find/word-to-replace/' -- by default first occurence in every lines
sed -e 's/word-to-find/word-to-replace/g'

sed -e '/learning/ d' passwd

sed -e '1d' passwd
```
```
disk usage
----------
monitoring team check servers, websites
if servers are down/more memory -- alert DevOps Team

Hard Disk -- just beside our laptop
Drive -- they are in network, connecting through internet

lsblk
sudo file -s /dev/xvdf
sudo lsblk -f
sudo mkfs -t xfs /dev/xvdf
sudo mkdir /data
sudo mount /dev/xvdf /data
```

```
chrome --> gmail.com --> compose msg --> send

Linux -- send a gmail

@cognizant.com
@tcs.com


yum -y install postfix cyrus-sasl-plain mailx

postfix --> Hit Gmail API
cyrus-sasl-plain --> authentication
mailx --> command to send email

from_address --> who is sending

naveen@gmail.com --> from address
naveen2@gmail.com --> to adress

ujuggcnzjmldgmkj

[smtp.gmail.com]:587 devopsandcloudwithsiva:ujuggcnzjmldgmkj

echo "This is a test mail & Date $(date)" | mail -s "message" naveen@gmail.com
```