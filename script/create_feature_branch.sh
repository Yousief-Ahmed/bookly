#!/bin/bash
# Example: ./create_feature_branch.sh login-screen

BRANCH_NAME=$1

git checkout features
git pull origin features
git checkout -b "$BRANCH_NAME"

#cd script
# ./create_feature_branch.sh login-screen