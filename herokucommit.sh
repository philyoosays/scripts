#!/bin/bash
#

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

echo $branch_name
git add .
read -p "Commit description: " desc
git commit -m "$desc"
git push heroku $branch_name
