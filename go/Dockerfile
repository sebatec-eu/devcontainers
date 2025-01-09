FROM docker.io/debian:testing@sha256:7d76af52371d2e8d4a912126402dbddd257d27937ab421f783a58029e3c7dd66

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends \
        g++ \
        gcc \
        git \
        libc6-dev \
        make \
        nodejs \
        npm \
        pkg-config \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
