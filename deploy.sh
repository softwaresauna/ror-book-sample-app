#!/usr/bin/env sh
branchName=$(git rev-parse --abbrev-ref HEAD)
git push heroku ${branchName}:master