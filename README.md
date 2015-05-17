# Cloudlet Platform Deployment Script

## Introduction
This script deploys the PEAT Platform on an Ubuntu 14.04 server


## Setup

Clone the peat-deploy-script project on the git repo.

    git clone https://github.com/peat-platform/peat-deploy-script.git


Once you are happy with your parameters you execute the following commands to bootstrap and provision the server. This can take up to an hour to execute.

    cd peat-deploy-script

    sudo bash bootstrap.sh


One the required 3rd party applications are installed pull in the PEAT code from the github repo and replace the developement 
public/private keys with production ready (2048 bit) keys.

    bash provision.sh
    
    sh utils/change_auth_token_keys.sh 
    
Next start the PEAT processes through tmux. Once it is up and running exit by entering ctrl + d.

    sh utils/tmux_peat.sh
Next we need to populate the datastore with a number of default objects.

    sh utils/populate_default_types.sh

    sh utils/populate_couchbase_views.sh
    
    sh utils/populate_graph_api_types.sh
    
To create the client lib for your server you need to run the following script with your servers dns. Once created it can be 
downloaded from the installations homepage.

    sh utils/generate_api_clients.sh server_dns
    
Your installation should be ready. Navigate to `https://<your ip address>`.


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
