FROM yugabytedb/yugabyte:2.20.7.1-b10

ARG USER=root

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

ENV YB_HOME="/home/yugabyte"

USER ${USER}
VOLUME ["/mnt/disk0", "/mnt/disk1"]
WORKDIR $YB_HOME

EXPOSE 7000 7100 7200 9000 9100 12000 11000 6379 9042 5433 10100

ENTRYPOINT ["/sbin/tini", "--"]
