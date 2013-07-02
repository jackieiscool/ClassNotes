#Git and Github

###Is git just short for github.com?
**NO!**

###What is git?

**git**
- git is a tool called a **version control system**
- git allows you to save different versions of your code at the same time
- git makes it easy to put the code from your computer onto the internet
- git also makes it possible for multiple developers to work on the same project

###What is github?

**github**
- github is a super awesome website
- github is a website where you store files of code online (think Dropbox for developers)
- github requires you to use the git tool

##Git Commands

		git init
		git add
		git commit -m <message>
		git push <remote> <branch>
		git pull <remote> <branch>
		git clone

**git init**  
This initializes a new git repository (a git repository, not a github repository)

**git add**  
This adds changes you have made to the git repository

**git commit -m**
- This commits (saves) the changes you've added to the repository
- The -m is to tell git you are going to write a message then you write this message
- You have to write a commit message to commit code

**git push remote branch**
- git push pushes your code to somewhere on the cloud (on the internet)
- remote is the web address of where you are pushing code
- branch is the name of the branch you are pushing to (for now, just origin)

**git pull remote branch**
- git pull pulls code down from the cloud (the internet)
- remote is still the web address
- branch is still the branch name

**git clone**  
This copies a full repo from the cloud to your computer

**git clone vs git init**
We use git init when we are initializing a new git repository from scratch, and git clone if we are copying an existing git repository.  
If you use git clone you do not need to use git init.  



