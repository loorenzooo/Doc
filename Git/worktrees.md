## Create worktree on another branch in parallel
```bash
BRANCH_VERSION=6.4
BRANCH=maintenance/$BRANCH_VERSION

BASE_REPO=tcommon-studio-se

cd $BASE_REPO
git fetch origin $BRANCH
git checkout $BRANCH
git checkout master
git worktree add ../${BASE_REPO}-${BRANCH_VERSION} $BRANCH
cd ..
```

## Delete worktree
Just delete the corresponding folder
git worktree prune
