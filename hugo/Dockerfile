FROM ghcr.io/sebatec-eu/go-devcontainer:1@sha256:1a81e651bdc86c109276c166129088b4b3300a0f477f60f8071d704cf96b1640

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
