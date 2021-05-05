FROM raspbian/stretch

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        chromium-browser && \
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /var/cache/apt/archives

ADD wrp-arm-linux /wrp

ENTRYPOINT ["/wrp"]

