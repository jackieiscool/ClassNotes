#Git

###Forking

This is a github feature, not a git feature. It creates a a copied version of the repo on your own github page.  

You can create your own feature branches, and have your own master branch to work off of in the forked copy.  

When working in groups your master should always match the main repos master.  

###Pull Requests

This is a github feature, not a git feature. You can submit pull requests from your forked repo, or a feature_branch on the main repo.  

##Merging/Rebasing
**Merging and then pushing**  
Go to master branch, or branch you wish to merge into:  
	- `git merge feature_branch`  
	- Deal with any merge conflicts that arise
	- `git add` and `git commit` merge changes
	- `git push origin master`
 
**Merging and submittng pull request**  
Go to feature_branch, the branch you will submit your pull request from.  
Make sure that your feature_branch has up to date changes from master.  
 	- `git pull master` or `git pull --rebase master`  
 	- Deal will any merge conflicts that arise  
 	- `git push feature_branch`  
 	- Submit pull request

It is important when working with a group that you decide what flow you want to use, and everyone sticks with it.  

Examples:  
	- Will you all push directly to master or use pull requests?  
	- Will you just pull, or pull and rebase?  
	- Will you submit PR's from your own fork, or will everyone branch off the same master?  

##Merge Conflicts

While merging or rebasing git will tell you if there is a merge coflict that needs to be dealt with. It will look something like this:  

		git merge teacher_notes

		Auto-merging wk3d1/javascript.md
		CONFLICT (add/add): Merge conflict in wk3d1/javascript.md
		Automatic merge failed; fix conflicts and then commit the result.

Merge conflicts are when there are differences in the same place of a file between two different branchs.  


Git tells us where the merge conflict exists.  

		Merge conflict in wk3d1/javascript.md

Go to this file, and find the merge conflict. It will look something like this:  

		  def test_method
			<<<<<<< HEAD
			  	#things things things
			  	self.name == self.teachers
			  	#That line will always be false
			=======
			  	#jackie is awesome
			  	self == self
			  	#that line will always return true
			>>>>>>> lesson_master
			 end

Now you must delete the code you don't want, along with the separators between around the two diffs.  




