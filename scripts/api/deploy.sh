#!/bin/bash
set -e
source ./scripts/helpers.sh

PACKAGE='api'

if shouldRunDeploy $PACKAGE; then
  yarn
fi
