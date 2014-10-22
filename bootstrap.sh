#!/bin/bash
USER=ubuntu
GROUP=ubuntu


#!/bin/bash
echo "################################"
echo "##Installing common components##"
echo "################################"
. core_bootstrap/common_bootstrap.sh


echo "################################"
echo "##Installing cloudlet framework components##"
echo "################################"
. core_bootstrap/cloudlet_framework_bootstrap.sh


echo "################################"
echo "##Installing api framework components##"
echo "################################"
. core_bootstrap/api_framework_bootstrap.sh


echo "################################"
echo "##Installing security framework components##"
echo "################################"
. core_bootstrap/security_framework_bootstrap.sh
