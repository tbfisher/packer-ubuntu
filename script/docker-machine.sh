#!/bin/bash

DOCKERMACHINE_VERSION=0.6.0

docker_machine_install() {

    # Update sources
    apt-get update
    apt-get install -y zip

    URL=https://github.com/docker/machine/releases/download/v${DOCKERMACHINE_VERSION}/docker-machine-Linux-x86_64

    echo downloading and installing ${URL}

    curl -L ${URL} >/usr/local/bin/docker-machine
    chmod +x /usr/local/bin/docker-machine

    /usr/local/bin/docker-machine --version

}

docker_machine_install
