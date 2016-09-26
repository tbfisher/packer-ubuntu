## Build

```shell
git checkout tbfisher/build-docker
```

pull

```shell
git fetch boxcutter
git merge 2.0.22
```

update docker compose/machine versions:

-   https://github.com/docker/machine/tags
-   https://github.com/docker/compose/tags

Start each provider, check for updates

Build in parallel

```shell
./bin/box build ubuntu1604
```

Build individually

```shell
./bin/box build ubuntu1604 vmware

# test...
./bin/box ssh box/vmware/ubuntu1604-$(cat VERSION).box vmware
##
df -h # 128G
docker --version
docker-compose --version
docker-machine --version
exit

./bin/box build ubuntu1604 virtualbox
```

Upload

```shell
cat VERSION
```

1.  upload to https://atlas.hashicorp.com
2.  "release" the new version

Verify

```shell
BOX=ubuntu1604

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

[16.04-docker](https://atlas.hashicorp.com/tbfisher/boxes/ubuntu1604docker)

```markdown
Ubuntu 16.04 with Docker

Fork of boxcutter/ubuntu1604

With

-   128 GB disk
-   Docker 1.12.1

Built with

-   VMware Fusion 8.5.0, Open VM Tools 2:10.0.7
-   Virtualbox 5.0.26, VirtualBox Guest Additions 5.0.26

https://github.com/tbfisher/packer-ubuntu
```
