FROM ubuntu:16.04

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apt-get update
RUN apt-get install -y vim openssh-server

ADD entrypoint.sh /
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
