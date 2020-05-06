#!/bin/bash
# remove simple web site for demo1

# close firewall
firewall-cmd --remove-service=http --permanent
firewall-cmd --reload

# disable and stop services
systemctl disable httpd
systemctl stop httpd

# remove index page
rm -f /var/www/html/index.html

# remove httpd package
yum remove httpd -y

# show results
systemctl status httpd
firewall-cmd --list-all
ls -l /var/www/html*
curl http://localhost
