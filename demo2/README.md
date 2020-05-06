# Demo 2 - Webapp in Container
This demo runs on a simple RHEL8 VM -> rh8demo

```text
[rmegens@rmegens RHA-2020]$ ssh root@rh8demo

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
2. Create Index page (html)
3. Show web content in Lynx
4. Show process in PID tree
