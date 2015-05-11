#!/bin/bash
cd ~/repos/peat-android-sdk

bash build-android-sdk.sh $1

cp peat-client-lib.aar                  ~/repos/mongrel2/static/android-sdk/