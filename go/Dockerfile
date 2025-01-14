FROM docker.io/debian:testing@sha256:c3ef8d3e6fb2399bce6cd551ff5825756c2276abcb717741583620ebfcbd8d13

ENV DEBIAN_FRONTEND=noninteractive

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision=$IMAGE_REVISION
LABEL org.opencontainers.image.url=https://github.com/sebatec-eu/devcontainers

RUN set -eux \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends \
        g++ \
        gcc \
        git \
        libc6-dev \
        make \
        nodejs \
        npm \
        pkg-config \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
