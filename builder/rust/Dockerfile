FROM docker.io/rust:1.82.0

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

WORKDIR /build

RUN rustup toolchain add nightly
RUN apt-get update && \
    apt-get install -y \
    autoconf \
    automake \
    build-essential \
    ca-certificates \
    clang \
    clang-format \
    clang-tidy \
    clang-tools \
    clangd \
    cmake \
    libelf-dev \
    libssl-dev \
    libtool \
    libzstd-dev \
    meson \
    musl \
    musl-dev \
    musl-tools \
    nasm \
    ninja-build \
    pkg-config \
    protobuf-compiler \
    python3-dev \
    wget \
    yasm
RUN wget https://developers.cloudflare.com/cloudflare-one/static/Cloudflare_CA.pem
RUN cp Cloudflare_CA.pem /usr/local/share/ca-certificates/Cloudflare_CA.crt
RUN update-ca-certificates
