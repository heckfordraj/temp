#!/bin/bash
set -ev
if [ "${TRAVIS_PULL_REQUEST}" = "true" ] && [ "${TRAVIS_BRANCH}" = "master" ]; then
  lerna ls --since master
else
  lerna ls --since
fi
