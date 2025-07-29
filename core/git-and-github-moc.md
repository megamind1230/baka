
# more ref
[[traversy-media-git-and-github]]
[[code-academy-git-and-github]]
[[gitexercises]]
[[git-and-github-issues]]
[[0-diff-command]]
[[w3schools-and-more-git-and-github-moc]]
[[git-kraken]]





# [Big Data ar](https://youtu.be/Q6G-J54vgKc?si=f5d16mRbvX8OblZH)
staging area = index
`git ls-files -s` > files in staging area + their sha1
`find .git/objects/ -type f` ?
`git add regex` regex while staging is allowed
`git rm --staged <file>` un stage
type-size-content ?
`git cat-file -t/s/p sha1_OR_first4To7Chars` type/size/content of file
	`git show sha1` .. better
U {untracked}
red M {working tree != staging} {modified}
non red M 
`git diff` diff between the 3 trees {working tree, staging, repo}
	`git diff --staged`
	`git diff sha1..sha1` diff between 2 commits
`git log --oneline`
	`git log --oneline -2` just 2 lines
	`git log --oneline --graph` outline
	`git reflog`
`git mv` better than normal OS `mv`
`rm -rf .git/` remove repo
`git restore file.txt` to restore from index to working tree
if file is added/staged i want to go back
	`git restore --staged file.txt` then
	`git restore file.txt`
to add + commit in same time
	`git commit -am "message"`
to edit last commit message
	`git commit --amend`
`git reset HEAD~2` undo go back 2 commits
	`--hard` use it carefully
`git resert Head@{whateverNumber}` redo commit
`git tag -a <version> -m "message"`
`git branch branch-name` create new branch
	`git branch` show all branches
	`git swtich branch-name` switch to branch
	`git status` show branch I am in
to merge A into B
	switch to B
	then `git merge A`
`git branch -d testing` delete testing branch
rebase is like merging but makes it linear
`git remote`
	when gives `origin` > means this local repo is taken from a remote repo
how to know local ?
	does not have `origin/` in its name
`git push -u origin feature` ?




# [elzero](https://www.youtube.com/playlist?list=PLDoPjvoNmBAw4eOj58MZPakHjaO3frVMF)
- new branch = new feature
- [[0-obsidian-first-step#[md](https //docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)|markdown]]
- 

# [DevMENA](https://www.youtube.com/watch?v=kTWbl_pY1s0)
repo
	`git init`
commit
	like save on your local machine ..{a snapshot}.. but has ID + certain point in time + message {meta data}
	`git commit -m "messag"`
	message > description
	each common focused on one task
branch
	`git branch feature-branch`
	branch for each feature or bugfix
merge
	`git merge feature-branch`
clone
	`git clone repo-link`
staging area
	`git add files-you-changed`
	otherwise git will ignore it
status
	`git status`
	what files are/are not on stage
log
	commit history
	`git log`
showcase flow ![[Pasted-image-20240222123228.png|300]]
