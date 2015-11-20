## Build

```shell
git checkout tbfisher/build-docker
```

@todo

```shell
git merge 2.0.4
# ...
```

Start each provider, check for updates

Test

```shell
./bin/box build ubuntu1504-docker vmware
./bin/box ssh box/vmware/ubuntu1504-docker-nocm-$(cat VERSION).box vmware
##
df -h # 64G
docker --version
docker-compose --version
docker-machine --version
exit

./bin/box build ubuntu1504-docker virtualbox
```

Build

```shell
rm -rf box/*/*

./build-box -parallel=false


packer build -only=vmware-iso -var-file=ubuntu1504.json ubuntu.json && \
packer build -only=virtualbox-iso -var-file=ubuntu1504.json ubuntu.json
```








Test any mods

```shell
make ssh-vmware/ubuntu1504-docker

# will dump into ssh session inside vm

df -h # 64G
docker --version
docker-compose --version
docker-machine --version
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

### Atlas Description

[15.04-docker](https://atlas.hashicorp.com/tbfisher/boxes/ubuntu1504docker)

Ubuntu 15.04 with Docker

Fork of boxcutter/ubuntu1504

With

-   64 GB disk
-   Docker 1.8.2
-   Docker Compose 1.4.2

Built with

-   VMware Fusion 7.1.3
-   Virutalbox 5.0.10

https://github.com/tbfisher/packer-ubuntu
