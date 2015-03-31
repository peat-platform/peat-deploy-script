#!/bin/bash

cd ~/repos


git clone https://github.com/OPENi-ict/cloudlet-platform.git
git clone https://github.com/OPENi-ict/mongrel2.git
git clone https://github.com/OPENi-ict/admin-dashboard.git
git clone https://github.com/OPENi-ict/user-dashboard.git

cd ~/repos/user-dashboard; npm install --no-bin-links
cd ~/repos/admin-dashboard; npm install --no-bin-links
cd ~/repos/cloudlet-platform; npm install --no-bin-links


