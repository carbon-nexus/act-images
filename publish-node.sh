#!/usr/bin/env bash
NODE_VERSIONS=(
    "16-bullseye-slim"
)

PLATFORMS=(
    amd64
    arm64
)

for PLATFORM in "${PLATFORMS[@]}"; do
    for NODEVERSION in "${NODE_VERSIONS[@]}"; do
        docker push carbonnexus/act-images:act-${PLATFORM}-node-${NODE_VERSION}
    done
done
