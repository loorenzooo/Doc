# Merge feature_branch into master
git co master
git merge feature_branch

- if no changes on master then fast-forward is performed
- if changes where made on master in parallel : a merge commit is created
- can be sen with git log --decorate --graph --online --all
