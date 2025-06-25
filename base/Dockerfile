FROM docker.io/debian:testing@sha256:8ac1a6436385cbc6aee56b98a2671c26a26d1f74d6da42d58084c2179355edde

ENV DEBIAN_FRONTEND=noninteractive

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision=$IMAGE_REVISION
LABEL org.opencontainers.image.url=https://github.com/sebatec-eu/devcontainers

RUN set -eux \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends \
        bash-completion \
        binutils \
        ca-certificates \
        curl \
        g++ \
        gcc \
        git \
        gnupg2 \
        inotify-tools \
        libc6-dev \
        make \
        netbase \
        nodejs \
        npm \
        pkg-config \
	sqlite3 \
        tar \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
