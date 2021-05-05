FROM raspbian/stretch

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        zlib1g-dev \
        cmake && \
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /var/cache/apt/archives

COPY /pvpgn-server /pvpgn-server

