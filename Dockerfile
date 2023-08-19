FROM alpine:3.18.3

ADD https://www.modbusdriver.com/downloads/diagslave.tgz /

ENV PROTOCOL=tcp
ENV SERIAL_PORT=/dev/ttyS0

RUN tar xvf diagslave.tgz

RUN mv /diagslave/x86_64-linux-gnu/diagslave /usr/bin && rm -rf /diagslave

ENTRYPOINT ["tail", "-f", "/dev/null" ]
