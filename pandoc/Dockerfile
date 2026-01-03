FROM ghcr.io/sebatec-eu/python-devcontainer:1@sha256:3133ebc53ea3d2850a54f5f48c11ce20703469f327cadc8b9b4aa427127c1db2

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision=$IMAGE_REVISION
LABEL org.opencontainers.image.url=https://github.com/sebatec-eu/devcontainers

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux \
    && apt-get update \
    && apt-get -y --no-install-recommends install \
        pandoc texlive lmodern texlive-latex-extra \
        wl-clipboard \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
