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

    sh utils/populate_default_types.sh

    sh utils/populate_couchbase_views.sh

    sh utils/generate_api_clients.sh server_dns

Navigate to `https://<your ip address>`.


## Additional Steps

A document in the db_keys bucket of couchbase must be created manually as couchbase does not supply REST endpoints for data manipulation within buckets.

* Temporarily allow port 8091 using the firewall tool 'ufw'.
* Navigate to the couchbase admin console <your ip address>:8091
* Select 'documents' for the db_keys bucket.
* Create an object named **dbkeys_29f81fe0-3097-4e39-975f-50c4bf8698c7** and Enter the following:

~~~json   
{
  "dbs": [
    "users",
    "clients",
    "authorizations",
    "queries"
  ]
}
~~~

* Disable port 8091 using ufw.

### Troubleshooting

If you have difficulty running the node applications try deleting their node_modules folder and executing npm install again.
