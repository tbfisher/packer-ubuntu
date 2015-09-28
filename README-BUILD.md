## Build

```shell
git checkout tbfisher/build-salt-docker
```
@todo

```shell
git merge 2.0.3
# ...
```

See available builds

```shell
make list
```

Start each provider, check for updates

Test any mods

```shell
make ssh-vmware/ubuntu1404-docker

# will dump into ssh session inside vm

df -h # 64G
salt --version # see Makefile.local
docker --version
```

Build

```shell
rm -rf box/*/*

make ubuntu1404-docker
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

### Atlas Description

[14.04-docker-salt](https://atlas.hashicorp.com/tbfisher/boxes/ubuntu1404dockersalt)

Ubuntu 14.04 with Docker and Saltstack

Fork of boxcutter/ubuntu1404

With

-   64 GB disk
-   Salt Master+Minion 2015.8.0
-   Docker 1.8.2

Built with

-   VMware Fusion 7.1.2
-   Virutalbox 5.0.0

https://github.com/tbfisher/packer-ubuntu
