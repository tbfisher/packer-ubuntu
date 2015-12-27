#!/bin/bash

DOCKERCOMPOSE_VERSION=1.5.2

docker_compose_package_install() {

  curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose


  URL=https://github.com/docker/compose/releases/download/${DOCKERCOMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m`

  echo downloading and installing ${URL}

  curl -L ${URL} > /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose

  /usr/local/bin/docker-compose --version

}

docker_compose_package_install
