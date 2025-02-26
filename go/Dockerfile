FROM ghcr.io/sebatec-eu/base-devcontainer:1@sha256:9a5eba97799da59403778707a89f5fffa9d10dfc55fd90726ecb54659165214b

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
