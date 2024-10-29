FROM ghcr.io/static-web-server/static-web-server:2-debian

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

ENV SERVER_ROOT="/dist"

WORKDIR /dist
STOPSIGNAL SIGQUIT

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["static-web-server"]
