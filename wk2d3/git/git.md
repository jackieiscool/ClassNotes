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
		git branch
		git checkout
		git checkout -b

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

#### Branching

One of the most important uses of a version controll system is branching.  
Branching allows you to create different versions of the same repo and save them separately.  

**git branch**  
- lists all of the branches you currently have

**git checkout**  
- used to switch branches
- example: `git checkout test_branch` moves me to a branch I have named test_branch

**git checkout -b branch_name**

To create a new branch...  
- this will both create a new branch and move you to that branch
- example `git checkout -b new_branch` creates a branch called new_branch and moves me onto that branch.
- It's best practice to always branch off of master.
- Your new branch will start at the state of whichever branch it was created off of.

####Merge Conflicts

**What is a merge conflict?**  

Merge conflicts occur when different changes are made in the remote and local branches of a git repo, in the same area. Git is not sure which changes you want to keep, and it feels conflicted.  

When you pull from your remote and there is a merge conflict this will appear in your terminal...  

		CONFLICT... etc... (things will go here)

**Manually dealing with merge conflicts:**  

In terminal, there is a list of files that have conflicts:  

		# Things will go here.

Open each of these files. The merge conflicts will be surrounded with `HEAD<<<` and `<<<<`  

		# Example conflict will go here

Choose which portion you want to keep and delete the rest (including HEAD and the arrows).  

Once you have dealt with all the conflicts `git commit` and the merge will be complete.  

**Dealing with conflicts "forcefully"**  

If you know for absolute sure that the changes you have locally are the ones you want remotely, you can force update your remote instead of merging.  

This is done with...  

		git push <remote> <branch> -f 	# f stands for force

It is recommended that you never do this, and you shouldn't tell anyone I told you that you could ;)  
Also, don't do this when you are working with partners/groups. It might overwrite others' code, and make them unhappy.  

**Merge Tools**  

To avoid the tedium of dealing with merge conflicts tools have been created to help in the process.  
I highly recommend opendiff, but here is a list of mergetools you can install...  

- opendiff (website goes here)
- things go here
- more things go here

Now when you have a merge conflict type...

		git mergetool

followed by enter. This will enter your mergetool.  














