### Git (Decentralised/Distributed Version Control System)
```
Git Repository:- Store Code

Push Code:- 
    Authentication:-  KeyBased (username/key -- it will be automatically taken from private key)
                      Token (Set Expire date for Token)
                      Username/Password (frequently we need to enter password every time)

ssh-keygen:- generate public key & private key

[ec2-user@ip-172-31-22-129 ~]$ ssh-keygen
Generating public/private rsa key pair.

[ec2-user@ip-172-31-22-129 ~]$ cd /home/ec2-user/.ssh/

[ec2-user@ip-172-31-22-129 .ssh]$ ls
authorized_keys  id_rsa  id_rsa.pub

We will public key & private key:- C:\Users\naveen\.ssh

Place public key in the Server
keep private key with you

https://github.com/kalidindi-naveen/daws-76s-notes.git -- username and password
git@github.com:kalidindi-naveen/daws-76s-notes.git     -- just private key
```
```
git init -- intialises a folder as git repo
git status -- we can know what is the status of our files

Add to staging/temp area
git add <file-name>
git add .

100 scripts
signup, login, forgot password
temp area -- select what is completed and push to git
signup -- add to it temp area and push to git

git config --global user.name "your-user-name"
git config --global user.email "your-email-id"

git commit -m "as part of bug fix" -- till here local...
```
```
IDE:- integrated development environment

Code in master/main:-- PROD Branch

Development & Testing??
Duplicate file, edit that, check that and then proceed

create another branch -- do changes -- test changes -- merge
```
```
git clone <URL> -- downloading a copy

git remote add origin <URL> -- setup Repository to push code

git push origin <branch-name> -- push into GitHub repository
git push -u origin main
```