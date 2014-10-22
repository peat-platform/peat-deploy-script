#!/bin/bash

cd $SCRIPT_ROOT_DIR
. core_provision/cloudlet_framework_provision.sh
cd $SCRIPT_ROOT_DIR
. core_provision/api_framework_provision.sh
cd $SCRIPT_ROOT_DIR
. core_provision/security_framework_provision.sh
cd $SCRIPT_ROOT_DIR
. core_provision/sdk_framework_provision.sh
