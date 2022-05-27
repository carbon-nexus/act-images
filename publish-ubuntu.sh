#!/usr/bin/env bash
UBUNTU_VERSIONS=(
    18.04
    20.04
    22.04
)

for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"; do
    docker push carbonnexus/act-images:act-ubuntu-${UBUNTU_VERSION}
done
