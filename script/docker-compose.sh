#!/bin/bash

DOCKERCOMPOSE_VERSION=1.5.1

docker_compose_package_install() {

  curl -L https://github.com/docker/compose/releases/download/${DOCKERCOMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose

}

docker_compose_package_install
