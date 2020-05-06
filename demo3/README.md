# Demo 1
This demo runs on a simple RHEL7 VM -> flanel

```text
[rmegens@rmegens RHA-2020]$ ssh root@flanel
```
## Content
```text
[rmegens@rmegens RHA-2020]$ tree demo1/
demo1/
├── files
│   └── index.html
├── README.md
├── remove_web.sh
└── setup_web.sh

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
