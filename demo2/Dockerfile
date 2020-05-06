FROM quay.io/generic/centos8:latest
MAINTAINER  Rik Megens <rmegens@redhat.com>

RUN     yum clean all \
	    && yum install httpd -y

COPY    files/index.html    /var/www/html/index.html
RUN	    chmod 0664 /var/www/html/index.html

CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]
