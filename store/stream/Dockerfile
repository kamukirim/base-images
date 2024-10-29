FROM docker.io/nats:2.10.22-linux

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

EXPOSE 4222 6222 8222

ENTRYPOINT ["/nats-server"]
CMD ["--config", "nats-server.conf"]
