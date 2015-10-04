#!/bin/bash

SSH_USERNAME=${SSH_USERNAME:-vagrant}

UBUNTU_MAJOR_VERSION=$(lsb_release -rs | cut -f1 -d .)

docker_compose_package_install() {
    # Update your sources
    apt-get update

    apt-get -y install python-pip
    pip install -U docker-compose
}

docker_compose_package_install
