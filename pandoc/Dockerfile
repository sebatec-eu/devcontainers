FROM ghcr.io/sebatec-eu/python-devcontainer:1@sha256:c8f94aace23844bc2d7c1c285ef1bcaa6bafb61243b444ef60dd94272bad05ba

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
