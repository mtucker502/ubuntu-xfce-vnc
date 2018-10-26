FROM consol/ubuntu-xfce-vnc

USER 0

RUN apt update

RUN apt install -y openjdk-8-jre icedtea-8-plugin

COPY asdm /headless/

RUN chmod +x /headless/asdm

RUN apt clean

USER 1000
