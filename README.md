# Run Slackware ARM miniroot filesystem in a Docker container

### Download latest Slackware ARM -current miniroot tarball
```
~$ wget -cv http://ftp.arm.slackware.com/slackwarearm/slackwarearm-devtools/minirootfs/roots/slackarm-current-miniroot_08Oct21.tar.xz -P slackwarearm-current/ 
```
### Build Docker image
```
~$ docker build -t slackwarearm-current:latest slackwarearm-current/ 
```
### To LIST Docker image(s)
```
~$ docker image ls
```
### Run Docker image using "--name slackarm-docker" ID tag and running bash login
```
~$ docker run -t -i --name slackarm-docker --privileged slackwarearm-current:latest bash -l
```
### NOW IN CONTAINER #
```
root@dockstar:/# slackpkg update
root@dockstar:/# slackpkg install slackware
root@dockstar:/# exit
```
### To LIST all Docker containers - active or otherwise
```
~$ docker container ls -a
```
### To START the container if it isn't running
```
~$ docker container start slackarm-docker
```
### To attach to the container and login
```
~$ docker exec -ti slackarm-docker bash -l
```
### To STOP the container if it is running
```
~$ docker container stop slackarm-docker
```
### To detach from a running container
```
CTRL+P,CTRL+Q - key sequence
```
### To attach to a running comtainer 
```
~$ docker attach [CONTAINER_NAME]
```

