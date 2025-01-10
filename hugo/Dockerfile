FROM ghcr.io/sebatec-eu/go-devcontainer:1@sha256:4c5f8b6e59e56019033282bf0409e5c871d4004668949bb06ed8fb31ee754805

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision=$IMAGE_REVISION
LABEL org.opencontainers.image.url=https://github.com/sebatec-eu/devcontainers

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux \
    && apt-get update \
    && apt-get -y --no-install-recommends install \
        aspell aspell-de aspell-en \
        bash-completion \
        binutils \
        ca-certificates \
        curl \
        gnupg2 \
        netbase \
        pandoc \
        tar \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
