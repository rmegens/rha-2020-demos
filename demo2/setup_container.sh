#!/usr/bin/env bash
# setup container web app

# create container image with Dockerfile
podman build -t myweb:v1 -f ./Dockerfile

# run container with container image
podman run -d --name mywebcontainer -p 8080:80 myweb:v1

# check web page from local machine
curl http://$(podman inspect mywebcontainer --format "{{ .NetworkSettings.IPAddress }}")

# open firewall
firewall-cmd --add-port=8080/tcp


