#!/bin/bash

# USER="user name here"
# SOURCE_TOKEN="token here"
# SOURCE_HOST="github.com"
# ORG="org name or user name here"
# REPO="repo name here "
# VERSION="main"

function execute_git() {
   echo "start git checkout...."
   git clone https://$USER:$SOURCE_TOKEN@$SOURCE_HOST/$ORG/$REPO.git
   cd $REPO
   git checkout $VERSION
}

execute_git