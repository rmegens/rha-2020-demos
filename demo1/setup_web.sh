#!/bin/bash
# setup simple web site for demo1

# install apache2
yum install httpd -y

# enable and start httpd service
systemctl enable httpd
systemctl start httpd

# open firewall
firewall-cmd --add-service=http --permanent
firewall-cmd --reload

# copy index page
cp files/index.html /var/www/html/index.html
chmod 0664 /var/www/html/index.html

# show results
systemctl status httpd
firewall-cmd --list-all
curl http://localhost
