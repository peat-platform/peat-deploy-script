#!/bin/bash

cd ~/repos

echo cloudlet-platform  && cd cloudlet-platform && npm install --no-bin-links ; cd ../
echo mongrel2           && cd mongrel2          && cd ../
echo api-builder        && cd api-builder       && cd ../
echo api-framework      && cd api-framework     && cd ../
echo openi_android_sdk  && cd openi_android_sdk && cd ../
echo uaa                && cd uaa               && cd ../