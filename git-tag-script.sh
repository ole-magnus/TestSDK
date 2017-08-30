#!/bin/bash

set -e

SOURCE_BRANCH="master"
TARGET_BRANCH="markdown-docs"

configure_git() {
    git config user.name "Travis CI"
    git config user.email "ole.magnus.aker@gmail.com"
}

check_tag() {
    
    if [ "$TRAVIS_TAG" = "" ]
    then 
        echo "Not publishing as no tag found"
        exit 0
    else
        echo "Building and deploying tag $TRAVIS_TAG"
    fi
}

check_branch() {
    if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
        echo "skipping deploy"
    else
        echo "Not skiping deploy"
    fi
}

echo "Running markdown-script"
check_branch
check_tag

