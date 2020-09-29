#!/usr/bin/env bash
# remove app from cluster

# call out to user that projectname is fixed and tied to the setup script
echo "Be sure you have created the app with the setup script since the projectname is hardcoded"

# delete project where all resources are created. this cleans up all resources
oc delete project webinar20200929
