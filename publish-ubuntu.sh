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
        docker push carbonnexus/act-images:act-${PLATFORM}-ubuntu-${UBUNTU_VERSION}
        docker push carbonnexus/act-images:act-${PLATFORM}-ubuntu-aws-${UBUNTU_VERSION}
    done
done
