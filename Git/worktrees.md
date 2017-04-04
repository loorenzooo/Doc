## Create worktree on another branch in parallel
```
# Fetch the branch you want a worktree on
git fetch origin maintenance/6.3
# Create a worktree on it
git worktree add ../tcommon-studio-se-6.3 origin maintenance/6.3
```

## Delete worktree
Just delete the corresponding folder
