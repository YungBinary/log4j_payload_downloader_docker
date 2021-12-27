FROM ubuntu:20.04

WORKDIR /opt

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt install git golang -y \
    && git clone https://github.com/djt78/log4j_payload_downloader.git \
    && cd log4j_payload_downloader \
    && bash build.sh

COPY entrypoint.sh /opt/log4j_payload_downloader
RUN chmod +x /opt/log4j_payload_downloader/entrypoint.sh
ENTRYPOINT ["/opt/log4j_payload_downloader/entrypoint.sh"]
