# Between working dir and staging
git diff

# Between working dir and repository
git diff HEAD

# Between staged and repository
git diff --staged HEAD

# limit to a single file
git diff -- myFile

# Between arbitrary commits
git diff <commit> HEAD
