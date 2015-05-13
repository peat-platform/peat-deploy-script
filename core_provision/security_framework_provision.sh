#!/bin/bash

cd core_provision/
npm install couchbase
node security_framework_init.js
rm -fr node_modules

cd ~/repos

git clone https://github.com/peat-platform/auth-dialogs.git

cd ~/repos/auth-dialogs; npm install --no-bin-links

