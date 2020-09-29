#!/usr/bin/env bash
# remove container webapp

# stop running container
podman kill mywebcontainer

# remove stopped container from cache
podman rm mywebcontainer

# close firewall port on firewall
firewall-cmd --remove-port=8080/tcp --permanent && firewall-cmd --reload
