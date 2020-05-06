# Demo 1 - webapp on vm
This demo runs on a simple RHEL7 VM -> flanel

```text
[demo@demo RHA-2020]$ ssh root@flanel
```
## Content
```text
[root@flannel rha-2020]# tree
.
└── demo1
    ├── files
    │   └── index.html
    ├── README.md
    ├── remove_web.sh
    └── setup_web.sh

2 directories, 4 files

```

## Set up script
To quickly setup the webserver use
```text
cd ~/rha-2020/demo1
[root@flannel demo1]# ./setup_web.sh
```

## tear down script
To quickly uninstall the webserver
```text
cd ~/rha-2020/demo1
[root@flannel demo1]# ./remove_web.sh
```

## Demo
Web application (the old way)
1. Install, configure and run Apache2
```text
# install apache2
[root@flannel demo1]# yum install httpd -y

# enable and start httpd service
[root@flannel demo1]# systemctl enable httpd
[root@flannel demo1]# systemctl start httpd

# open firewall
[root@flannel demo1]# firewall-cmd --add-service=http --permanent
[root@flannel demo1]# firewall-cmd --reload
```
2. Create Index page (html)
```text
# copy index page
[root@flannel demo1]# cp ~/rha-2020-demos/demo1/files/index.html /var/www/html/index.html
[root@flannel demo1]# chmod 0664 /var/www/html/index.html
```
3. Show web content with curl
```text
[root@flannel demo1]# curl http://localhost
```
4. Show httpd process 
```text
[root@flannel demo1]# ps aux | grep httpd
```




# show results
systemctl status httpd
firewall-cmd --list-all
curl http://localhost