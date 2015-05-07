#!/bin/bash

cd ~/repos

git clone https://github.com/peat-platform/auth-api.git
git clone https://github.com/peat-platform/crud-api.git
git clone https://github.com/peat-platform/openi-auth-dialogs.git

cd ~/repos/auth-api;           npm install --no-bin-links
cd ~/repos/crud-api;           npm install --no-bin-links
cd ~/repos/openi-auth-dialogs; npm install --no-bin-links