#!/usr/bin/env bash
UBUNTU_VERSIONS=(
    18.04
    20.04
    22.04
)

PLATFORMS=(
    amd64
    arm64
)

for PLATFORM in "${PLATFORMS[@]}"; do
    for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"; do
        docker build \
        -f Dockerfile-ubuntu \
        --build-arg PLATFORM=${PLATFORM} \
        --build-arg UBUNTU_VERSION=${UBUNTU_VERSION} \
        --build-arg BUILD_DATE=$(date +"%Y-%m-%dT%H:%M:%S%z") \
        --build-arg BUILD_REVISION=$(git rev-parse HEAD) \
        --platform="linux/${PLATFORM}" \
        -t carbonnexus/act-images:act-${PLATFORM}-ubuntu-${UBUNTU_VERSION} .
    done
done

for PLATFORM in "${PLATFORMS[@]}"; do
    for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"; do
        docker build \
        -f Dockerfile-ubuntu-aws \
        --build-arg PLATFORM=${PLATFORM} \
        --build-arg UBUNTU_VERSION=${UBUNTU_VERSION} \
        --build-arg BUILD_DATE=$(date +"%Y-%m-%dT%H:%M:%S%z") \
        --build-arg BUILD_REVISION=$(git rev-parse HEAD) \
        --platform="linux/${PLATFORM}" \
        -t carbonnexus/act-images:act-${PLATFORM}-ubuntu-aws-${UBUNTU_VERSION} .
    done
done
