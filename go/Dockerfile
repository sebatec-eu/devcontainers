FROM ghcr.io/sebatec-eu/base-devcontainer:1@sha256:c053eed78e78254dbd125425a1e8eb85827a4d9fa91a59584d0a8202820a56f7

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
