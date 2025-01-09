FROM ghcr.io/sebatec-eu/go-devcontainer:1@sha256:df0fe956885a8170ad7d263e0caa397c518b650859fc364c9c970a0bc328e15d

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
