FROM ghcr.io/sebatec-eu/go-devcontainer:1@sha256:d50293eb123c84b42e703f5a76597172ebbe1a74c0f08699394dfc7d4117bcec

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
