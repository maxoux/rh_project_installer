#!/bin/bash

PRIMARY_BRANCH="refonte_back"
DIRNAME="rhproject_back"
NODE_VERSION="6.1.0"

echo "Clone distant repository"
git clone git@bitbucket.org:darkael/rhproject.git ${DIRNAME}
cd ${DIRNAME}
echo "Switch to right branch"
git checkout ${PRIMARY_BRANCH}
git pull
sudo n ${NODE_VERSION}
echo "Execute pre-install script"
sudo node ./scripts/preinstall.js
echo "Install dependencies"
npm install
echo "Execute post-install script"
sudo node ./scripts/postinstall.js