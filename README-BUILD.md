## Build

```shell
git checkout tbfisher/build
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
make ssh-vmware/ubuntu1404
make ssh-vmware/ubuntu1204

# will dump into ssh session inside vm

df -h # 64G
puppet --version
```

Build

```shell
rm -rf box/*/*

make ubuntu1404
make ubuntu1204
```

Upload

```shell
cat VERSION
```

1.  upload to https://atlas.hashicorp.com
2.  "release" the new version

Verify

```shell
BOX=ubuntu1404

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

[14.04](https://atlas.hashicorp.com/tbfisher/boxes/ubuntu1404dockersalt)

Ubuntu 14.04 with Puppet

Fork of boxcutter/ubuntu1404

With

-   64 GB disk
-   Puppet 3.8.3

Built with

-   VMware Fusion 7.1.2
-   Virutalbox 5.0.0

https://github.com/tbfisher/packer-ubuntu
