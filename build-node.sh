#!/usr/bin/env bash
NODE_VERSIONS=(
    "16-bullseye-slim"
)

PLATFORMS=(
    amd64
    arm64
)

for PLATFORM in "${PLATFORMS[@]}"; do
    for NODE_VERSION in "${NODE_VERSIONS[@]}"; do
        docker build \
        -f Dockerfile-node \
        --build-arg PLATFORM=${PLATFORM} \
        --build-arg NODE_VERSION=${NODE_VERSION} \
        --build-arg BUILD_DATE=$(date +"%Y-%m-%dT%H:%M:%S%z") \
        --build-arg BUILD_REVISION=$(git rev-parse HEAD) \
        --platform="linux/${PLATFORM}" \
        -t carbonnexus/act-images:act-${PLATFORM}-node-${NODE_VERSION} .
    done
done
