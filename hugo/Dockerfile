FROM docker.io/debian:testing

RUN apt-get update \
    && apt-get -y --no-install-recommends install git pandoc aspell aspell-de aspell-en bash-completion golang-go nodejs \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
