#!/bin/bash

USER=TESTUSER
ORG=TESTORG
GIT_REPOS=$(curl -u $USER -s https://api.github.com/orgs/$ORG/repos | grep -e 'ssh_url*' | cut -d \" -f 4)
for REPO in $GIT_REPOS; do
    git clone $REPO
done
