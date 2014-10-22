#!/bin/bash

cd ~/repos

echo cloudlet-platform  && cd cloudlet-platform && git pull ; cd ../
echo mongrel2           && cd mongrel2          && git pull ; cd ../
echo api-builder        && cd api-builder       && git pull ; cd ../
echo api-framework      && cd api-framework     && git pull ; cd ../
echo openi_android_sdk  && cd openi_android_sdk && git pull ; cd ../
echo uaa                && cd uaa               && git pull ; cd ../