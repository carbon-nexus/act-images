# act-images
[nektos/act](https://github.com/nektos/act) compatible images with the below tools installed:
* yq - https://github.com/mikefarah/yq
* gomplate - https://github.com/hairyhenderson/gomplate 

Rather than installing these tools as part of your Github workflows, leverage images that have them already built in. 

> Full disclosure, these images were built FROM the `nektos/act` images (ie `catthehacker`).

## Building
In order to build these images, folks should run the below command
```
./build-ubuntu.sh
```

This will build docker images with the below versions of ubuntu:
* 18.04 (both ARM64 and AMD64)
* 20.04 (both ARM64 and AMD64)
* 22.04 (both ARM64 and AMD64)

> Images are tagged with `act-<platform>-ubuntu-<version>` or `act-<platform>-ubuntu-aws-<version>`

## Publishing
Assuming you have the correct access to `carbonnexus/act-images` repository in docker hub, you would run the below (after building):
```
./publish-ubuntu.sh
```
