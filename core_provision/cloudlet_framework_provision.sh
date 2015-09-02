#!/bin/bash

cd ~/repos


git clone https://github.com/peat-platform/cloudlet-platform.git
git clone https://github.com/peat-platform/mongrel2.git
git clone https://github.com/peat-platform/admin-dashboard.git
git clone https://github.com/peat-platform/user-dashboard.git
git clone https://github.com/peat-platform/acceptancetests.git

cd ~/repos/user-dashboard; npm install --no-bin-links
cd ~/repos/admin-dashboard; npm install --no-bin-links
cd ~/repos/cloudlet-platform; npm install --no-bin-links


