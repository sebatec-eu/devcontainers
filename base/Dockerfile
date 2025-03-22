FROM docker.io/debian:testing@sha256:74e0a76fedf4b9a71dba4fd69fbedf65b2495419aec5a094b2cb85b3a346d658

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
        tar \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
