FROM scratch

ARG BUILD_RFC3339="1970-01-01T00:00:00Z"
ARG COMMIT="local"
ARG VERSION="dirty"

STOPSIGNAL SIGKILL

LABEL org.opencontainers.image.ref.name="jervenclark/docker-template" \
  org.opencontainers.image.created=$BUILD_RFC3339 \
  org.opencontainers.image.authors="Jerven Clark Chua<jervenclark.chua@gmail.com>" \
  org.opencontainers.image.documentation="https://github.com/jervenclark/docker-template/README.md" \
  org.opencontainers.image.description="Sample Docker Hub build hooks" \
  org.opencontainers.image.licenses="GPLv3" \
  org.opencontainers.image.source="https://github.com/jervenclark/docker-template" \
  org.opencontainers.image.revision=$COMMIT \
  org.opencontainers.image.version=$VERSION \
  org.opencontainers.image.url="https://hub.docker.com/r/jervenclark/docker-template/"

ENV BUILD_RFC3339 "$BUILD_RFC3339"
ENV COMMIT "$COMMIT"
ENV VERSION "$VERSION"

RUN --mount=type=cache,target=/var/cache echo '***'
