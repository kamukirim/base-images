# Base Images

This repository is used to maintain common/shared docker images for `KamuKirim` and `KamuPay` system.

## Images

- Base Image for Backend:
  - Tag: `ghcr.io/kamukirim/base-backend:latest`
  - Source: [docker.io/debian:12](https://hub.docker.com/_/debian)
- Base Image for Frontend:
  - Tag: `ghcr.io/kamukirim/base-frontend:latest`
  - Source: [docker.io/node:lts](https://hub.docker.com/_/node)
- Rust Builder:
  - Tag: `ghcr.io/kamukirim/builder-rust:latest`
  - Source: [docker.io/rust:1.82.0](https://hub.docker.com/_/rust)
- Key Value Store:
  - Tag: `ghcr.io/kamukirim/store-kv:latest`
  - Source: [docker.io/eqalpha/keydb:x86_64_v6.3.4](https://hub.docker.com/r/eqalpha/keydb)
- SQL Store:
  - Tag: `ghcr.io/kamukirim/store-sql:latest`
  - Source: [docker.io/yugabytedb/yugabyte:2.20.7.1-b10](https://hub.docker.com/r/yugabytedb/yugabyte)
- Stream Store:
  - Tag: `ghcr.io/kamukirim/store-stream:latest`
  - Source: [docker.io/nats:2.10.22-linux](https://hub.docker.com/_/nats)
