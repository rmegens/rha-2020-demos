#!/usr/bin/env bash
# this script copies files to a RHEL7 VM on which the webserver will be installed
rsync -var --progress ~/rha-2020-demos/demo1/* root@flanel:rha-2020-demos/demo1/
