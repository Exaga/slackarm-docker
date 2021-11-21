# SARPi Project Dockerfile - Slackware ARM -current [17Nov21]
FROM scratch 
MAINTAINER SARPi Project [https://sarpi.penthux.net] 
# http://ftp.arm.slackware.com/slackwarearm/slackwarearm-devtools/minirootfs/roots/slackarm-current-miniroot_08Oct21.tar.xz
ADD slackarm-current-miniroot_08Oct21.tar.xz /
RUN echo -e "# Set Docker PS1\nPS1='\\u@slackware:\\w\\$ '" >> /etc/profile
CMD ["/bin/bash"]
