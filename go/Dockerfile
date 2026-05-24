FROM ghcr.io/sebatec-eu/base-devcontainer:1@sha256:e9ac40d4a9d26743a8c259030118614ec8115b8b4690ef2fcfbe0e696d6aefb9

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
