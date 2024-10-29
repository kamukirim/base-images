FROM docker.io/debian:12

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

WORKDIR /root
COPY Cloudflare_CA.pem .

RUN apt-get update && \
    apt-get install -y \
    ca-certificates \
    openssl
RUN mkdir -p /usr/local/share/ca-certificates
RUN cp Cloudflare_CA.pem /usr/local/share/ca-certificates/Cloudflare_CA.crt
RUN update-ca-certificates

WORKDIR /app
STOPSIGNAL SIGTERM
