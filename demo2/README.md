# Demo 2 - Webapp in Container
This demo runs on a simple RHEL8 VM -> rh8demo

```text
[demo@demo RHA-2020]$ ssh root@rh8demo

[root@rh8demo ~]# cd rha-2020/demo2/
```
## Content
```text
[root@rh8demo rha-2020]# tree demo2/
demo2/
├── Dockerfile
├── Dockerfile_alpine
└── files
    ├── index.html
    └── redhat.repo

1 directory, 4 files
```


## Demo
Web application in a container on a stand-alone runtime host
1. Create a Dockerfile
```text
[root@rh8demo demo2]# cat Dockerfile
FROM quay.io/generic/centos8:latest
MAINTAINER  Rik Megens <rmegens@redhat.com>

RUN     yum clean all \
    	&& yum install httpd -y

COPY    files/index.html    /var/www/html/index.html
RUN	    chmod 0664 /var/www/html/index.html

CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]

```
2. Create an image from the Dockerfile using Podman
```text
[root@rh8demo demo2]# podman build -t my4web .
```
3. Create a container from the image using podman
```text
[root@rh8demo demo2]# podman run -d --name myweb4 -p 8080:80 localhost/rha-myweb:latest
```
4. Show process in PID tree

        <ul>
            <li>show index page with Lynx</li>
                <ul>
                    <li>lynx http://localhost</li>
                </ul>

            <li>show running processes on host</li>
                <ul>
                    <li>ps aux | grep apache</li>
                </ul>

            <li>show running processes in container</li>
                <ul>
                    <li>podman exec -ti rha-mayweb /bin/bash</li>
                    <li>ps aux | grep apache</li>
                </ul>