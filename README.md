#Docker Dev Environments base image with Golang 18 and  Generics

This repository show you how to create a Docker Environment base image to use Golang 18 and develop with Generics.

## Build your own image
You can use [Docker Buildx](https://github.com/docker/buildx) to build multiarch images:
```shell
docker buildx build --builder multi --platform=linux/amd64,linux/arm64 --push -t gloursdocker/devenv-golang18  -f .
```

## Use the already built image
This sample has been already built and is [available from Docker Hub](https://hub.docker.com/repository/docker/gloursdocker/devenv-golang18)
You can use it directly in your project by creating a `.docker/config.json` file in your repository with the following content
```json
{
  "image": "gloursdocker/devenv-golang18"
}
```