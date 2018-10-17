#!/bin/bash
set -e

git config --global user.email "44237005+hkfd-ci@users.noreply.github.com"
git config --global user.name "Hkfd CI"

git checkout master
git reset --hard
git remote add release https://${GH_TOKEN}@github.com/heckfordraj/temp.git
lerna version --force-publish --yes --git-remote release
