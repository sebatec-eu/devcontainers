FROM docker.io/debian:testing@sha256:7d76af52371d2e8d4a912126402dbddd257d27937ab421f783a58029e3c7dd66

ENV DEBIAN_FRONTEND=noninteractive
ENV GO_TOOLS="\
golang.org/x/tools/gopls@latest \
honnef.co/go/tools/cmd/staticcheck@latest \
golang.org/x/lint/golint@latest \
github.com/mgechev/revive@latest \
github.com/go-delve/delve/cmd/dlv@latest \
github.com/fatih/gomodifytags@latest \
github.com/haya14busa/goplay/cmd/goplay@latest \
github.com/cweill/gotests/gotests@latest \
github.com/josharian/impl@latest"
ENV GO111MODULE=on

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        git \
        pandoc \
        aspell aspell-de aspell-en \
        bash-completion \
        golang-go \
        nodejs \
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
    && (echo "${GO_TOOLS}" | xargs -n 1 go install -v ) \
    && unset DEBIAN_FRONTEND \
    && unset GO_TOOLS \
    && unset GO111MODULE

ENV PATH /lib/go/bin:$PATH
