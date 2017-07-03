## Build

```shell
git checkout git@github.com:tbfisher/packer-ubuntu.git
git remote add boxcutter git@github.com:boxcutter/ubuntu.git
git checkout tbfisher/build-1604
```

pull

```shell
git fetch boxcutter
# git merge 2.0.26
git merge 2df53ff42e35c3d4f2010e4b53acf92d018c7d0a
```

update docker compose/machine versions:

-   https://github.com/docker/machine/tags
-   https://github.com/docker/compose/tags

Start virtualbox, check for updates

```shell
./bin/box build ubuntu1604 virtualbox

# test...
./bin/box ssh box/vmware/ubuntu1604-$(cat VERSION).box vmware
##
df -h # 128G
docker --version
exit

./bin/box build ubuntu1604 virtualbox
```

Upload

```shell
cat VERSION
```

1.  upload to https://app.vagrantup.com/tbfisher/boxes/ubuntu1604
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

[16.04-docker](https://atlas.hashicorp.com/tbfisher/boxes/ubuntu1604)

```markdown
Ubuntu 16.04

Fork of boxcutter/ubuntu1604

With

-   128 GB disk

Built with Virtualbox 5.1.22, VirtualBox Guest Additions 5.0.30

https://github.com/tbfisher/packer-ubuntu
```
