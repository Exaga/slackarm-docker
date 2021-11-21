## Run Slackware ARM miniroot filesystem in a Docker container

Using the official Slackware ARM miniroot filesystem from http://ftp.arm.slackware.com/slackwarearm/slackwarearm-devtools/minirootfs/roots/ it's possible to run Slackware ARM OS in a Docker container. This is useful for test-driving the system or trying it out, running processes for testing and development, etc. You should already have Docker installed and running on a host system. Run the Slackware ARM miniroot filesystem in a container as a normal limited user and **NOT** 'root' user.

### Clone the slackarm-docker repo
```
git clone https://github.com/Exaga/slackarm-docker
```
### Make a Docker repository directory
```
mkdir -p slackarm-docker/slackwarearm-current
cd slackarm-docker
```
Copy the Dockerfile into the repository directory.
```
cp -avr Dockerfile slackwarearm-current/
```

### Download latest Slackware ARM -current miniroot tarball
**Check for updates - 08Oct21 was latest version at time of writing.**  
URL: http://ftp.arm.slackware.com/slackwarearm/slackwarearm-devtools/minirootfs/roots/  
If updates exist or you want to use another Slackware ARM miniroot fs tarball then the Dockerfile ADD line needs editing with the correct filename!
```
wget -cv http://ftp.arm.slackware.com/slackwarearm/slackwarearm-devtools/minirootfs/roots/slackarm-current-miniroot_08Oct21.tar.xz -P slackwarearm-current/ 
```

### Build Docker image
```
docker build -t slackwarearm-current:latest slackwarearm-current/ 
```
### To LIST Docker image(s)
```
docker image ls
```
### To RUN Docker image using "--name slackarm-docker" ID tag and login to container
```
docker run -t -i --name slackarm-docker --privileged slackwarearm-current:latest bash -l
```
### IN CONTAINER 
```
root@dockstar:/# cat /etc/os-version
root@dockstar:/# cat /etc/slackware-version
```
### To detach from the running container

<kbd>CTRL</kbd> + <kbd>P</kbd> , <kbd>CTRL</kbd> + <kbd>Q</kbd> 

### To attach to the running comtainer 
```
docker attach slackarm-docker
```
### To LIST all Docker containers - active or otherwise
```
docker container ls -a
```
### To START the container if it isn't running
```
docker container start slackarm-docker
```
### To attach to the container and login
```
docker exec -ti slackarm-docker bash -l
```
### To detach from the running container

<kbd>CTRL</kbd> + <kbd>P</kbd> , <kbd>CTRL</kbd> + <kbd>Q</kbd> 

### To attach to the running comtainer 
```
docker attach slackarm-docker
```
### To STOP the container if it is running
```
docker container stop slackarm-docker
```

