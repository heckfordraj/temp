#!/bin/bash
set -e

eval "$(ssh-agent -s)"
git checkout master
git reset --hard
git remote add release https://${GH_TOKEN}@github.com/heckfordraj/temp.git
lerna version --force-publish --yes --git-remote release
