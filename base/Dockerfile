FROM docker.io/debian:testing@sha256:bb500c27597a1ed87ecf1ee1260fd401ae58fd6410efc1c657ce8355bf545287

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
		git-lfs \
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
