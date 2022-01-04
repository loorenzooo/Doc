## Create worktree on another branch in parallel

```bash
BRANCH_VERSION=8.0.1
ORIGINAL_BRANCH=maintenance/7.3
TARGET_BRANCH=maintenance/8.0
BASE_REPO=tdq-studio-ee
cd $BASE_REPO
git fetch origin $TARGET_BRANCH
git checkout $TARGET_BRANCH
git checkout $ORIGINAL_BRANCH
git worktree add ../${BASE_REPO}-${BRANCH_VERSION} $TARGET_BRANCH
cd ..
```

## Delete worktree

Just delete the corresponding folder
git worktree prune
