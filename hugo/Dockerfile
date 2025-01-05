FROM docker.io/debian:testing@sha256:7d76af52371d2e8d4a912126402dbddd257d27937ab421f783a58029e3c7dd66

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        git \
        pandoc \
        aspell aspell-de aspell-en \
        bash-completion \
        nodejs \
        npm \
        g++ \
        gcc \
        libc6-dev \
        make \
        pkg-config \
        ca-certificates \
        gnupg2 \
        tar \
        curl \
        binutils \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && unset DEBIAN_FRONTEND
