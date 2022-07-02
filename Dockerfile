FROM padhihomelab/alpine-base:3.16.0_0.19.0_0.2 as base
ARG TARGETARCH

FROM base AS base-amd64
ENV LIDARR_ARCH=x64

FROM base AS base-arm64
ENV LIDARR_ARCH=arm64

FROM base AS base-armv7
ENV LIDARR_ARCH=arm

FROM base-${TARGETARCH}${TARGETVARIANT}

ARG LIDARR_VERSION=1.1.0.2602

ARG LIDARR_BRANCH=master
ADD "https://services.lidarr.audio/v1/update/nightly/updatefile?version=${LIDARR_VERSION}&os=linuxmusl&runtime=netcore&arch=${LIDARR_ARCH}" \
    /tmp/lidarr.tar.gz

COPY lidarr.sh \
     /usr/local/bin/lidarr
COPY entrypoint-scripts \
     /etc/docker-entrypoint.d/99-extra-scripts

RUN chmod +x /etc/docker-entrypoint.d/99-extra-scripts/*.sh \
             /usr/local/bin/lidarr \
 && apk add --no-cache --update \
            icu-libs \
            libintl \
            chromaprint \
            libmediainfo \
            sqlite-libs \
            tzdata \
 && cd /tmp \
 && tar -xvzf lidarr.tar.gz \
 && rm -rf Lidarr/fpcalc \
           Lidarr/Lidarr.Update \
           /tmp/lidarr.tar.gz \
 && mv /tmp/Lidarr /lidarr

EXPOSE 8686
VOLUME [ "/config", "/downloads", "/music" ]

CMD [ "lidarr" ]

HEALTHCHECK --start-period=10s --interval=30s --timeout=5s --retries=3 \
        CMD ["wget", "--tries", "5", "-qSO", "/dev/null",  "http://localhost:8686/"]
