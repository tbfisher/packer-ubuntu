#!/bin/bash

DOCKERMACHINE_VERSION=0.5.1

docker_machine_install() {

    # Update sources
    apt-get update
    apt-get install -y zip

    curl -L https://github.com/docker/machine/releases/download/v${DOCKERMACHINE_VERSION}/docker-machine_linux-amd64.zip > machine.zip
    unzip machine.zip
    rm machine.zip
    mv docker-machine* /usr/local/bin

}

docker_machine_install
