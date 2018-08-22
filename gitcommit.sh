#!/bin/bash
#

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

git add .
read -p "Commit description: " desc
git commit -m "$desc"
git push origin $branch_name
