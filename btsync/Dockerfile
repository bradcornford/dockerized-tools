FROM alpine:latest
MAINTAINER Boris Gorbylev <ekho@ekho.name>

ADD https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz /sync.tar.gz
ADD start.sh /start.sh

RUN tar xf /sync.tar.gz && \
    rm /sync.tar.gz

WORKDIR /
RUN uname -a && pwd && ls -alh `pwd` && ls -alh / && ./rslsync --help

VOLUME ["/data"]
EXPOSE 3369/udp 8888

CMD ["/start.sh"]
