#!/bin/bash
set -e

eval "$(ssh-agent -s)"
# chmod 600 .travis/deploy_key.pem
# ssh-add .travis/deploy_key.pem
git checkout master
git reset --hard
git remote add temp https://${GH_TOKEN}@github.com/heckfordraj/temp.git
lerna version --force-publish --no-commit-hooks --conventional-commits --yes --git-remote temp
