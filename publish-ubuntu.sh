#!/usr/bin/env bash
UBUNTU_VERSIONS=(
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
        docker push carbonnexus/act-images:act-${PLATFORM}-ubuntu-k8s-${UBUNTU_VERSION}
        docker push carbonnexus/act-images:act-${PLATFORM}-ubuntu-python-${UBUNTU_VERSION}
        docker push carbonnexus/act-images:act-${PLATFORM}-ubuntu-tilt-${UBUNTU_VERSION}
    done
done
