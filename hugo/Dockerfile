FROM ghcr.io/sebatec-eu/go-devcontainer:1@sha256:c4f5002e5a743ae5da70adf3db83045eda9310f71c0784259592acaa2f952ebb

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision=$IMAGE_REVISION
LABEL org.opencontainers.image.url=https://github.com/sebatec-eu/devcontainers

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux \
    && apt-get update \
    && apt-get -y --no-install-recommends install \
        aspell aspell-de aspell-en \
        pandoc \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
