# Demo 3 - Webapp in Openshift
This demo runs on a CodeReadyContainer All-In-One Openshift 4.4 cluster

## Content
```text
[rmegens@rmegens RHA-2020]$ tree demo3/
[rmegens@rmegens RHA-2020]$ tree demo3/
demo3/
├── files
│   └── index.html
└── README.md

1 directory, 2 files
```


## Demo 3
Web application on Openshift (CRC)
1. Log into CRC as developer
```text
[rmegens@rmegens RHA-2020]$ oc login -u developer -p developer https://api.crc.testing:6443
```
2. Create a project
```text
oc new-project rha-may-web
```
3. Create the webapp using Github and S2I
```text
[rmegens@rmegens RHA-2020]$ oc new-app httpd~http://github.com/rmegens/rha-2020-demos --context-dir=demo3/files/ --name my-webapps2i
```
4. Show the build process
```text
[rmegens@rmegens RHA-2020]$ oc logs -f bc/my-webapps2i
```
5. Create a route to access the webpage from outside the cluster
```text
[rmegens@rmegens RHA-2020]$ oc expose svc my-webapps2i
```
6. Show the web-page in a webbrowser
```text
[rmegens@rmegens RHA-2020]$ firefox http://my-webapps2i-rha-may-web.apps-crc.testing
```
7. Show running processes on the host
```text
[rmegens@rmegens RHA-2020]$ ps aux | grep httpd
```
8. Show running processes in the pod
```text
[rmegens@rmegens RHA-2020]$ oc get pods
NAME                    READY   STATUS      RESTARTS   AGE
my-webapps2i-1-build    0/1     Completed   0          28m
my-webapps2i-1-deploy   0/1     Completed   0          27m
my-webapps2i-1-p6xmx    1/1     Running     0          27m

[rmegens@rmegens RHA-2020]$ oc rsh my-webapps2i-1-p6xmx
sh-4.2$
 
sh-4.2$ ps aux | grep httpd

sh-4.2$ exit
exit
[rmegens@rmegens RHA-2020]$ 
```
