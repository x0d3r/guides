# Git Survivor Guide

## Installation

```shell
apt-get install git
```

## Configuration
```shell
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global color.ui auto
git config --list 
```

## Starting a Repo
```shell
git init [project name]
git clone [project url]
```

## Hands on
```shell
git status
git diff [file]
git diff --staged [file]
git diff [source branch] [target branch]	-- View changes between two branchs
git checkout -- [file]	-- Discard local changes

git add . 		-- Add all files recursively to index
git add [-A]	-- Add all files new and updated
git add [file]	-- Add file to index
git rm [file]	-- Remove file from working directory and add deletion to the staging area 

git commit -m "Commit Message"		-- Commit changes added to the staging area
git commit -a -m "Commit Message"	-- Add a file and commit
git commit --amend -m "Commit Message"	-- Rectifies a commit, by adding more files or modifying commit message

git stash 		-- Put current changes into stash
git stash pop	-- Apply stored stash content into working directory and clear stash
git stash drop	-- Clear stash without applying it into working directory
``` 

## Merge & Rebase
```shell
git merge [branch]	-- Merge branch into current HEAD
git rebase [branch]	-- Rebase current HEAD onto branch
git rebase --abort 
git rebase --continue -- After solving conflicts
git mergetool 
```

## Tags 
```shell
git tag 	-- List current tags
git tag [name] [commit sha]		-- Create a tag reference named name for current commit 
git tag -a [name] [commit sha]	-- Create a tag object named name for current commit
git tag -d [name] 	-- Remove a tag from a local repository
```

## Reviews
```shell
git log [-n 10]	-- Last n commits
git log --oneline --graph --decorate 	-- Overview with labels.
git log ref.. 	-- List commits present on current branch and not merged to ref (branch | tag)
git log ..ref 	-- List commits present on ref and not merged to current branch
git reflog 		-- List operations checkouts, commits made on local repo
git blame 		-- Who changed whant and when in file
```

## Branching
```shell
git branch [-av] 	
git branch name			-- Create new branch, referencing from current HEAD
git checkout [-b] name 	-- Switching working directory to specified branch. Using -b Git, will create branch if it doesnt exist
git checkout master		-- Switch to master branch
git merge [from name]	-- Merge changes from branch x into current branch
git branch -d [name]	-- Remove selected branch, -D forces deletion
```

## Remote
```shell
git remote -v 					-- List remotes
git remote show [remote]		-- Remote info
git remote add origin [remote]	-- Connect local repo with remote repo
```

## Repo Sync
```shell
git fetch [remote]			-- Fetch changes from remote, but not update tracking branches
git fetch --prune [remote]	-- Remove remote refs, that were removed from the repo repository
git pull [remote] 			-- Fetch changes from remote and merge current branch
git push [--tags] [remote]	-- Push local changes to remote. Use --tags to push tags. Eg. git push origin master
git push -u [remote] [branch]	-- Push local branch to remote repo.
git push --tags				-- Publish tags
```

## Reverting changes
```shell
git reset --hard HEAD
git reset --hard [commit sha]	-- Reset HEAD to previous commit and discard all changes
git reset [commit sha]			-- Reset HEAD to previous commit and preserve all changes as unstaged changes
git reset --keep [commit sha]	-- Reset HEAD to previous commit and preserve uncommited local changes
git checkout HEAD [file]
git revert [commit sha] 	-- New commit, reverting to specified commit
git reset [file] -- Get file back from staging area to working directory
```	

## Resources
https://ndpsoftware.com/git-cheatsheet.html

https://www.git-tower.com/blog/git-cheat-sheet/

https://rubygarage.org/blog/most-basic-git-commands-with-examples
