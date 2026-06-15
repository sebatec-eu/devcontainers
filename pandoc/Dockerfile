FROM ghcr.io/sebatec-eu/python-devcontainer:1@sha256:ef012cd2cbb52959c388afe8cc92614351364361e9a4e6a77a2cfe71de3664dd

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision=$IMAGE_REVISION
LABEL org.opencontainers.image.url=https://github.com/sebatec-eu/devcontainers

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux \
    && apt-get update \
    && apt-get -y --no-install-recommends install \
        pandoc texlive lmodern texlive-latex-extra texlive-lang-german \
        wl-clipboard \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
