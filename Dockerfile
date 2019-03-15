FROM alpine

COPY assets/* /opt/resource/
COPY docker-tunnel /usr/bin/docker-tunnel

RUN apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    docker \
    jq \
    openssh \
    openssl \
    screen \
 && update-ca-certificates

RUN chmod +x /usr/bin/docker-tunnel && chmod +x /opt/resource/*
