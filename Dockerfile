FROM alpine

COPY assets/* /opt/resource/

RUN apk add --no-cache \
    ca-certificates \
    curl \
    docker \
    jq \
    openssh \
    openssl \
    screen \
 && update-ca-certificates
RUN apk --no-cache add bash
RUN chmod +x /opt/resource/*
