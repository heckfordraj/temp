#!/bin/bash
set -e
source ./scripts/helpers.sh

PACKAGE='email'

if shouldRunTest $PACKAGE; then
  lerna run test --scope=$PACKAGE
fi
