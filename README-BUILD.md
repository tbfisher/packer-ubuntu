## Build

```shell
git checkout tbfisher/build-docker
```

pull

```shell
git fetch boxcutter
git merge 2.0.14
```

update docker compose/machine verions:

-   https://github.com/docker/machine/releases/
-   https://github.com/docker/compose/releases/

Start each provider, check for updates

Build

```shell
./bin/box build ubuntu1404-docker vmware

# test...
./bin/box ssh box/vmware/ubuntu1404-docker-nocm-$(cat VERSION).box vmware
##
df -h # 64G
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

puppet --version
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

-   64 GB disk
-   Docker 1.10.2
-   Docker Compose 1.6.2
-   Docker Machine 0.6.0

Built with

-   VMware Fusion 8.1.0, Open VM Tools 9.4.0.25793
-   Virtualbox 5.0.14, Guest Additions 5.0.14

https://github.com/tbfisher/packer-ubuntu
```
