#!/bin/bash
USER=ubuntu
GROUP=ubuntu

SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#!/bin/bash
echo "################################"
echo "##Installing common components##"
echo "################################"
. core_bootstrap/common_bootstrap.sh


echo "################################"
echo "##Installing cloudlet framework components##"
echo "################################"
cd $SCRIPT_ROOT_DIR
. core_bootstrap/cloudlet_framework_bootstrap.sh


echo "################################"
echo "##Installing api framework components##"
echo "################################"
cd $SCRIPT_ROOT_DIR
. core_bootstrap/api_framework_bootstrap.sh


echo "################################"
echo "##Installing security framework components##"
echo "################################"
cd $SCRIPT_ROOT_DIR
. core_bootstrap/security_framework_bootstrap.sh

echo "################################"
echo "##Installing client lib components##"
echo "################################"
cd $SCRIPT_ROOT_DIR
. /vagrant/core_bootstrap/client_lib_bootstrap.sh