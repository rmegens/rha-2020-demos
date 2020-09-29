#!/usr/bin/env bash

# Login to cluster
echo "Login to your cluster"
echo

# assuming you are logged in as developer to your CRC cluster

# create new project
oc new-project webinar20200929

# create new application from github repo
oc new-app --name my-webapp httpd~http://github.com/rmegens/rha-2020-demos --context-dir=demo3/files/

# check your build
echo "Using oc commands you can now check the status of your build process"
echo " oc logs"
echo " oc get all"
echo " oc get pods"
echo " oc get svc"

# create the route so you can access this app from outside of the cluster
echo " oc expose svc"
echo " oc get route"

# using the result of oc get route to test the app in your browser
echo " using the result of oc get route to test the app in your browser"