FROM docker.io/debian:12

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

WORKDIR /root
RUN apt-get update && \
    apt-get install -y \
    ca-certificates \
    openssl \
    wget
RUN wget https://developers.cloudflare.com/cloudflare-one/static/Cloudflare_CA.pem
RUN cp Cloudflare_CA.pem /usr/local/share/ca-certificates/Cloudflare_CA.crt
RUN update-ca-certificates

WORKDIR /app
STOPSIGNAL SIGTERM
