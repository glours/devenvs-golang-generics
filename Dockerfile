FROM golang:1.18-rc

RUN useradd -s /bin/bash -m vscode
RUN groupadd docker && usermod -aG docker vscode

# COPY Docker binaries from the gloursdocker/docker image
COPY --from=gloursdocker/docker / /