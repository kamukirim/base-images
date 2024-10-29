FROM docker.io/eqalpha/keydb:x86_64_v6.3.4

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

ENV KEYDB_PRO_DIRECTORY="/usr/local/bin/"

VOLUME /data
WORKDIR /data

EXPOSE 6379

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["keydb-server","/etc/keydb/keydb.conf"]
