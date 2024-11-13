FROM docker.io/rust:1.82.0

LABEL org.opencontainers.image.source=https://github.com/kamukirim/base-images

WORKDIR /build
COPY Cloudflare_CA.pem .

RUN apt-get update && \
    apt-get install -y \
    ca-certificates \
    openssl
RUN mkdir -p /usr/local/share/ca-certificates
RUN cp Cloudflare_CA.pem /usr/local/share/ca-certificates/Cloudflare_CA.crt
RUN update-ca-certificates
RUN rustup toolchain add nightly && rustup toolchain add stable
RUN apt-get update && \
    apt-get install -y \
    autoconf \
    automake \
    build-essential \
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
