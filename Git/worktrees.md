## Create worktree on another branch in parallel
```bash
# Fetch and checkout the branch you want a worktree on
git fetch origin maintenance/6.3
git checkout maintenance/6.3
# Go back on master
git checkout master
# Create a worktree on it
git worktree add ../tcommon-studio-se-6.3 maintenance/6.3
```

## Delete worktree
Just delete the corresponding folder
