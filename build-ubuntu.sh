#!/usr/bin/env bash
UBUNTU_VERSIONS=(
    18.04
    20.04
    22.04
)

for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"; do
    docker build \
      -f Dockerfile-ubuntu \
      --build-arg UBUNTU_VERSION=${UBUNTU_VERSION} \
      --build-arg BUILD_DATE=$(date +"%Y-%m-%dT%H:%M:%S%z") \
      --build-arg BUILD_REVISION=$(git rev-parse HEAD) \
      -t carbonnexus/act-images:act-ubuntu-${UBUNTU_VERSION} .
done
