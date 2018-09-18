#!/bin/bash
set -e
source ./scripts/helpers.sh

PACKAGE='angular'

if shouldRunTest $PACKAGE; then
  lerna run test --scope=$PACKAGE
fi
