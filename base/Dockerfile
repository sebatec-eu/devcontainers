FROM docker.io/debian:testing@sha256:340786a0f6fc5a2b3f4b48b83653796bbe35d6ee95a8ef444e4486b8dbcc6ac0

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
