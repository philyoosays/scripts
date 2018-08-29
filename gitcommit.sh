#!/bin/bash
#

desc=$1

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

git add .
if [[ $1 == '' ]]; then
  read -p "Commit description: " desc
fi
git commit -m "$desc"
git push origin $branch_name
