## Build

```shell
git checkout tbfisher/build-docker
```

@todo

```shell
git merge 2.0.4
# ...
```

See available builds

```shell
make list
```

Start each provider, check for updates

Test any mods

```shell
make ssh-vmware/ubuntu1504-docker

# will dump into ssh session inside vm

df -h # 64G
docker --version
docker-compose --version
```

Build

```shell
rm -rf box/*/*

make ubuntu1504-docker
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

-   VMware Fusion 7.1.2
-   Virutalbox 5.0.0

https://github.com/tbfisher/packer-ubuntu
