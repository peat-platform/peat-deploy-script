# Cloudlet Platform Deployment Script

## Introduction
This script deploys the OPENi Cloudlet Platform on an Ubuntu 14.04 server


## Setup

Clone the openi_dev_env project on the git repo.

    git clone https://github.com/OPENi-ict/openi-deploy-script.git


Once you are happy with your parameters you execute the following commands to bootstrap and provision the server. This can take up to an hour to execute.

    cd openi-deploy-script

    sudo sh bootstrap.sh


## Post Bootstrap

    bash provision.sh

    sh utils/tmux_openi.sh

    sh utils/generate_api_clients.sh dev.openi-ict.eu

Navigate to `https://<your ip address>`.



### Troubleshooting

If you have difficulty running the node applications try deleting their node_modules folder and executing npm install again.
