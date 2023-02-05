FROM ubuntu:22.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y apt-utils
RUN apt-get install -y inetutils-tools
RUN apt-get install -y inetutils-ping
RUN apt-get install -y inetutils-traceroute
RUN apt-get install -y net-tools

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
RUN apt-get install -y tzdata
RUN apt-get install -y htop
RUN apt-get install -y mc
RUN apt-get install -y nano
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y postgresql-client


RUN apt-get install -y software-properties-common
RUN apt-get install -y python3-pip





WORKDIR /






CMD ["sleep", "infinity"] #solving problem with exit just after run_all finished
#CMD tail -f /dev/null

