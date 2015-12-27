## Build

```shell
git checkout tbfisher/build-docker
```

@todo

```shell
git fetch boxcutter
git merge 2.0.9
# ...
```

Start each provider, check for updates

Build

```shell
./bin/box build ubuntu1504-docker vmware

# test...
./bin/box ssh box/vmware/ubuntu1504-docker-nocm-$(cat VERSION).box vmware
##
df -h # 64G
docker --version
docker-compose --version
docker-machine --version
exit

./bin/box build ubuntu1504-docker virtualbox
```

Upload

```shell
cat VERSION
```

1.  upload to https://atlas.hashicorp.com
2.  "release" the new version

Verify

```shell
BOX=ubuntu1504-docker

rm Vagrantfile
vagrant init tbfisher/${BOX}
vagrant box update
vagrant up
vagrant ssh

puppet --version
exit

vagrant destroy
```

clean up

```shell
make clean
```

### Atlas Description

[15.04-docker](https://atlas.hashicorp.com/tbfisher/boxes/ubuntu1504docker)

Ubuntu 15.04 with Docker

Fork of boxcutter/ubuntu1504

With

-   64 GB disk
-   Docker 1.9.1
-   Docker Compose 1.5.1
-   Docker Machine 0.5.1

Built with

-   VMware Fusion 8.0.2
-   Virutalbox 5.0.10

https://github.com/tbfisher/packer-ubuntu
