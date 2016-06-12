## Build

```shell
git checkout tbfisher/build-docker
```

pull

```shell
git fetch boxcutter
git merge 2.0.18
```

update docker compose/machine versions:

-   https://github.com/docker/machine/tags
-   https://github.com/docker/compose/tags

Start each provider, check for updates

Build

```shell
./bin/box build ubuntu1404-docker vmware

# test...
./bin/box ssh box/vmware/ubuntu1404-docker-nocm-$(cat VERSION).box vmware
##
df -h # 128G
docker --version
docker-compose --version
docker-machine --version
exit

./bin/box build ubuntu1404-docker virtualbox
```

Upload

```shell
cat VERSION
```

1.  upload to https://atlas.hashicorp.com
2.  "release" the new version

Verify

```shell
BOX=ubuntu1404-docker

rm Vagrantfile
vagrant init tbfisher/${BOX}
vagrant box update
vagrant up
vagrant ssh

exit

vagrant destroy
```

clean up

```shell
make clean
```

### Atlas Description

[14.04-docker](https://atlas.hashicorp.com/tbfisher/boxes/ubuntu1404docker)

```markdown
Ubuntu 14.04.4 with Docker

Fork of boxcutter/ubuntu1404

With

-   128 GB disk
-   Docker 1.11.1
-   Docker Compose 1.7.1
-   Docker Machine 0.7.0

Built with

-   VMware Fusion 8.1.1, VMware Tools 10.0.6
-   Virtualbox 5.0.20, VirtualBox Guest Additions 5.0.20

https://github.com/tbfisher/packer-ubuntu
```
