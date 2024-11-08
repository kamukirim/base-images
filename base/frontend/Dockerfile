FROM docker.io/node:lts

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

ENV SERVER_ROOT="/app"

WORKDIR /app
STOPSIGNAL SIGTERM

EXPOSE 3000

CMD ["npm", "run", "start"]
