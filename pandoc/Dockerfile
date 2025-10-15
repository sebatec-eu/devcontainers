FROM ghcr.io/sebatec-eu/python-devcontainer:1@sha256:79a3983657d6200c52593add6b9d86a0b4ec291d5ae5012b1b79827afc2d360d

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
