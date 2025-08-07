# how to merge conflict ?

# [[w3schools-and-more-git-and-github-moc#^ef7419|what is GitHub deploy?]]


# [[w3schools-and-more-git-and-github-moc#^a4d479]]

# [[w3schools-and-more-git-and-github-moc#^da51e4]]

# [[w3schools-and-more-git-and-github-moc#^a4320b]]

[[w3schools-and-more-git-and-github-moc#^f0bdb1]]

- [ ] idk if this is always or not {but the default name for the `master branch` in Git is `main` in GitHub}?
- [ ] in 2024-03-04 I used this command in git (on windows)
	`git config --global core.autocrlf true`
- [ ] [[how-to-publish-private-file-in-a-public-repo-on-GitHub]]

- [ ] [[cicd-pipeline-github]]
> continuous integration / continuous deployment
- [ ] how to do a PR{pull request} on github



- [ ] undoing
- `git revert <commit>` Create new commit that undoes all of the changes made in `<commit>`, then apply it to the current branch.
- `git reset <file>` Remove `<file>` from the staging area, but leave the working directory unchanged. This unstages a file without overwriting any changes.
-  `git clean -n` Shows which files would be removed from working directory. Use the -f flag in place of the -n flag to execute the clean.

- [ ] rewriting git history
- `git commit --amend` Replace the last commit with the staged changes and last commit combined. Use with nothing staged to edit the last commit’s message.
- `git rebase <base>` Rebase the current branch onto `<base>`. `<base>` can be a commit ID, branch name, a tag, or a relative reference to `HEAD`.
- `git reflog` Show a log of changes to the local repository’s `HEAD`. Add `--relative-date` flag to show date info or `--all` to show all refs.

- [ ] git reset
	- `git reset` reset staging area to match most recent commit, but leave the working directory unchanged
	- `git reset --hard` reset staging area and working directory to match most recent commit and overwrites all changes in the working directory
	- `git reset <commit>` move the current branch tip backward to `<commit>`, reset the staging area to match, but leave the working directory alone.
	- `git reset --hard <commit>` same, bu resets both the staging + working to match. deletes uncommited, and all commits after `<commit>`
- [ ]  git rebase
	- `git rebase -i <base>` interactively rebase current branch onto `<base>`. launches editor to enter cmds for how each commit will be transferred to the new base.
- [ ] git pull
	- `git pull --rebase <remote>` fetch the remote's copy of current branch and rebases it into the local copy. uses git rebase instead of merge to integrate the branches
- [ ] git push
	- `git push <remote> --force` forces the git push even if it results in a non-fast-forward merge. do not use the `--force` nless ur sure
	- `git push <remote> --all` push all of your local branches to the specified remote
	- `git push <remote> --tags` tags are not auto pushed when you push a branch or use the `--all`.  `--tags` sends all local tags to remote repo