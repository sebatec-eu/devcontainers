FROM ghcr.io/sebatec-eu/base-devcontainer:1@sha256:ace4d939856cbd9bc4030cef389ee35f073b4aa87772de1d000f644e959fbad6

ARG IMAGE_REVISION
LABEL org.opencontainers.image.revision=$IMAGE_REVISION
LABEL org.opencontainers.image.url=https://github.com/sebatec-eu/devcontainers

# ENV DEBIAN_FRONTEND=noninteractive
# RUN set -eux \
# 	&& apt-get update \
# 	&& apt-get install -y --no-install-recommends \
#         g++ \
#         gcc \
#         git \
#         libc6-dev \
#         make \
#         nodejs \
#         npm \
#         pkg-config \
#     && apt-get autoremove -y \
#     && apt-get clean -y \
#     && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
#     && unset DEBIAN_FRONTEND
