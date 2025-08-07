#todo
[ref](https://www.w3schools.com/git/default.asp?remote=github)


- [x] `git config --list` > list every change in config file
- [x] `git push --set-upstream origin master`, same as `git push -u origin master`
- [x] `git checkout sha1` switches to that commit 


---

- [x] `git --version` verifies that you installed git
- [x] let Git know who you are, each Git commit uses this information
	- [x] `git config --global user.name "w3schools-test"`
		- notice `user.name`
	- [x] `git config --global user.email "test@w3schools.com"`
		- `--global` to set the username and e-mail `for every repository on your computer`.
---

- tracked file= git knows about it + added to the repo
- `git add --all` shorthand `git add -A` {not `-a`}
	- Using `--all` instead of individual filenames will stage `all` changes:(new, modified, and deleted) files.
- `git commit -a -m "Updated index.html with a new line"`
	- `-a -m` shorthand is `-am`
	-  `-a` automatically stage every changed, already tracked file.
		- {{careful}}: will not work in case of newly created file
	- remember: Skipping the stage step can sometimes make you include unwanted changes.
- Short status flags are:
	- `??` - Untracked files
	- `A` - Files added to stage
	- `M` - Modified files
	- `D` - Deleted files
- `git log` history of commits
- `git status --short` > compact/shorter version of status
- ---
> Git Help

- `git command -help` See available `options` for {command}
	- You can also use `--help` instead of -help to open the relevant Git manual page

---
> Git Branch
- [x] `git branch` list available branches
- [x] `git switch -b B` switches to branch B 
	- `-b` {and creates it if not created already}
	- `switch` = `checkout`
- [x] to merge A into B 
	- switch to B {the core} `git switch B`
	- then `git merge A` {the addition}
	-   `git branch -d Name` delete a branch locally
		- `git push --delete origin Name` delete it also from github

- ---

> Git GitHub Getting Started



- making a new repo on `GitHub` does just mean that you are making a place to host your code in
	- so if you have a local repo on your machine.. you can link it with the `GitHub` new repo .. so you can sync/push changes into it
	- that {linking} is done like:
		- `git remote add origin github_repo_https_URL` https, or `git remote add origin github_repo_ssh_URL` ssh
			- specifies that you are adding a remote repository, with the specified URL, as an origin to your local Git repo.
				- `git remote --verbose`
	- now to {push} `local master` to `remote origin` & make `remote origin` as the default remote branch
		- `git push --set-upstream origin master`
			- like saying: upload/push to `origin` the data inside `master`
			- first time needs authentication {username, pw}
				-  but now it's diff nowadays
					- we use a ***token*** instead of ***pw***
						- settings > dev settings > personal access tokens

- ---

> Pull from GitHub

- pull from github to keep git up-to-date
	- `pull` = `fetch` + `merge`
		- on local master `git fetch origin` gets the change history of the tracked branch/repo
			- like saying: just sync ideas with remote .. but wait for my orders.. more like getting a `hidden status report` from remote
				- which you can triple check with `git status` `git log origin/master` `git diff origin/master`
					- to see if you're `ahead OR behind` remote
		- now if you want to merge `git merge origin/master` .. also can triple check
	- but as said `git pull origin` does the job

- ---

> Push to GitHub
- [x] do some local changes
	- then `git push origin master` to push from Git into GitHub to keep it up-to-date

- ---

- We can create a branch from GitHub GUI

- ---

>Git Pull {Branch} from GitHub

- after creating a branch on github & while you are on local master:
	- `git pull` updates local
		- to make it see that there is a new created branch on GitHub remote
		- `git status` and `git branch` to know that you are on local master .. but {the new GitHub branch does not show}
			- now on using `git branch -a` or `git branch -r`
				- `-r` for remote branches
				- `-a` for both remote and local
				- you can see the new GitHub branch shows
					- also can switch to it `git switch github_new_branch`
						- check for updates `git pull` and current branch `git branch` .. even can check the new branch changes on you're text editor

- ---

> Git Push {Branch} to GitHub

- create some local branch .. switch to it.. do some changes
- check `status` .. now you see the changes
- `add` .. check `status` again .. `commit`
- now you can `push` `local branch` from Git into GitHub
	- `git push origin new-local-branch`
- `compare` .. `pull request` .. `merge` it yourself {cuz it's your own repo.. XD}
- delete unwanted branches

- ---

>Git GitHub Flow

- why use git and github? flow showcase
```
Create a new Branch
Make changes and add Commits
Open a Pull Request
Review
Deploy
Merge
```
- Note: GitHub shows new commit and feedback in the "unified Pull Request view".

```
Deploy 
When the pull request has been reviewed and everything looks good, it's time for the final testing. 
GitHub allows you to deploy from a branch for final testing in production before merging with the master branch.
If any issues arise, you can undo the changes by deploying the master branch into production again!

Note: Teams often have dedicated testing environments used for deploying branches.
```

^ef7419

- Note: You can add `keywords` to your `pull request` for `easier searching`

- ---

>Git GitHub Pages

- GitHub can free-host a repo of yours as a Website.. just follow this special naming rule
	- `your GitHub username` then `.github.io`
	- it looks like a normal remote repo .. to which you can `push` a local repo
- from the repo settings > pages > you can see your static `website link` there

- ---

>Git GitHub Fork

- Git does not allow you to add code to someone else's repository without access rights
	- but GitHub allow you to copy/`fork` it to your account, make changes, suggest these to the original repo
- ---

>Git Clone from GitHub

- clone vs download
	- A clone is a full copy of a repo, including all logging and versions of files.
	- `git clone URL myFolder` clone into `myFolder`
- into our local Git, we `clone` {the repo we forked from {upstream}}, not Our fork {origin}
	- so `git clone forked-from-URL`
	- but we still will make both as `remote`
- `git remote -v` to view all your remotes right now
	- shows only the repo that we forked from .. as `origin`
	- here is a Git rule:
		- According to Git naming conventions, it is recommended to name `your own fork` repository as `origin`, and the one you `forked from` as `upstream`
	- so `git remote rename origin upstream` .. then check `git remote -v`
		- now it shows the repo we forked from as `upstream`
- so the repo we forked from 
	- { is cloned + is shown as remote {renamed to `upstream`} }
		- still we need to add {Our fork} as remote
- so `git remote add origin our-fork-URL` ..then check `git remote -v` to see remote view
	- our fork > shows as `origin` {where we have read and write access}
	- forked from > shows as `upstream` {where we have read-only access}

- ---

> Git GitHub Send Pull Request

- do some local git changes.. add & commit > push them to {Our fork} `git push origin`
	- now in GitHub, you see you can `create pull request` .. with proper comments
- so now anyone with access to `upstream` repo can {`see` and `compare`} your pull request, {`comment` with a feedback for you} and {`merge pull request` and `confirm`}

- ---

>Git Ignore and .gitignore


- sometimes we don't want to {share} or {add&commit} some files..like `{log/temp/hidden/personal/node.js package.. etc} files`.. so we ignore them
- in repo {root} `touch .gitignore` {applies the effect on the whole repo}
	- open and type the formats that you want to ignore
```
/*inside the .gitignore file*/

text.txt 
//ignore the text.txt file in root

parent/ 
//ignore all files in any directory named{parent} 

*.log 
// ignore all .log files
!mine.log 
// except the one named {mine.log}

```
[more formats](https://www.w3schools.com/git/git_ignore.asp?remote=github)
- btw.. It is possible to have additional `.gitignore` files in `subdirectories`. These only apply to files or folders within that subdirectory.
- Local and {Personal Git Ignore} Rules ^a4d479
	- It is also possible to ignore files or folders {but not show it in the distributed `.gitignore` file}
		- These kinds of ignores are specified in the `.git/info/exclude` file. It works the same way as `.gitignore` but are not shown to anyone else.

- ---

> [Git Security SSH](https://www.w3schools.com/git/git_security_ssh.asp?remote=github) & Git GitHub Add SSH

[elzero git ssh](https://www.youtube.com/watch?v=KhYK0cczeSY)

- SSH = Secure SHell network protocol
	- used for {network management - remote file transfer - remote system access}
		- The `public` key is the one you share with the remote party.{the lock}
		- The `private` key is the one you keep for yourself in a secure place. {the key to the lock}
		- `public` can be derived from `private` key, not the opposite
- create new key in git
	- `ssh-keygen -t rsa -b 4096 -C you-email`
		- change or leave `keyfile` as default
		- passphrase or not
- Now we add this SSH key pair to the SSH-Agent (using the file location from above) `ssh-add keyfile-path` 
 ^da51e4
- copy ssh `public` key into clipboard
	- `clip < /Users/user/.ssh/id_rsa.pub`
		- or `cat` and copy text from terminal
	- then GitHub settings > ssh > new > title&paste
	- test `ssh -T git@github.com`
		- last line has your username on GitHub ?
			- successfully authenticated
- [Add New GitHub SSH Remote](https://www.w3schools.com/git/git_remote_add_ssh.asp?remote=github) ^a4320b

- ---

> Git {undo} with Revert, reset , amend

- better use all of these just on your local git .. not on the remote repo .. to avoid confusion

- `revert`
	- imagine: the last commit did {delete some files/ something harmful by mistake } .. I need to undo that last commit 
		- using `revert` creates a new commit {in which that last commit is undone/reversed/reverted}
	- easier to use with {the last wrong commit} ^f0bdb1
		- but: to revert to earlier commits, use `git revert HEAD~x` {revert the last `2` commits = `git revert HEAD~1` .. yup}
	- `git log --oneline` compact log preview
	- `git revert HEAD --no-edit` 
		- creates {a new commit} with the same message as the last one
		- AND {where the last commit changes is undone}
- `reset`
	- imagine: I did some commits that I thought would be helpful .. but later it wasnt .. I need to go back to a commit prior to all of them
		- using `reset` moves the repo back to that commit, discarding any changes/commits made after that commit.. {no new commits created}
	- just `git log --oneline` to find the proper `commit hash`
		- then `git reset commit-hash`
			- `--hard` may be needed
	- btw .. even though `the discarded commits` are not showing up in the `log`, they are {not removed} from Git.
		- you can `reset` to one of them if you know its hash
	- Warning: Messing with the commit history of a repository can be dangerous. It is usually ok to make these kinds of changes on {your own local} repository. However, you should avoid making changes that rewrite history to {remote} repositories, especially if others are working with them.
- `amend`
	- imagine: you 
		- made a {typo} in the commit message
		- {forgot} to add some files to the commit
			- `--amend` > just modify the most recent commit. 
				- deletes the last commit 
				- and creates a new one with `a new different hash` 
					- `git log` before and after to get it
	- typo? `git commit -m "Adding plines to reddme"`
		- `git commit --amend -m "Added lines to README.md"`
	- forgot some files?
		- `git add these-files` as normal
		- then `git commit --amend --no-edit` {leave last commit message as-is }


by default on github `master` has the pushed files but `main` is the default of the repo
	merging `main` with `master` is somehow hard .. but u can u fix the repo view to make `master` show first as by default
		repo settings > branches  > default branch

![[git-and-github-issues]]



```git
# make commits alias
git config --global alias.ac "commit -am"
	# so can use: git ac "whatever"

# stash
# idk .. it's like a parallel universe where you put things 
# that r { cool but breaks the code / sloppy and need more improvement } 

git stash save stashName
git stash list
git stash apply stashIndex

# best log cmd
git log --graph --oneline --decorated
```

- [x] switch from https to ssh
```bash
# generate ssh public-key
ssh-keygen -t rsa -b 4096
# copy public-key, put it on github
cat ~/.ssh/whatever.pub
# relink to the remote repo
git remote set-url origin git@github.com:username/repo_name.git
# check connection
ssh -T git@github.com

# sometimes this is needed
eval `ssh-agen -s`
	#the private-key
ssh-add -K ~/.ssh/whatever 
# again check connection
ssh -T git@github.com
```

[[git-and-github-issues]]