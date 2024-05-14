FROM debian:stable-slim
WORKDIR /workspace
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y git zip bash curl awscli apt-transport-https

copy init.sh /workspace

RUN chmod +x init.sh

cmd ["./init.sh"]
