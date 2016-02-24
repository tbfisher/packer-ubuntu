#!/bin/bash -eux

SSH_USERNAME=${SSH_USERNAME:-vagrant}

if [[ $PACKER_BUILDER_TYPE =~ vmware ]]; then
    echo "==> Installing Open VM Tools"

    cd /tmp

    # https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=2075048
    curl -O https://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-DSA-KEY.pub
    apt-key add VMWARE-PACKAGING-GPG-DSA-KEY.pub
    curl -O https://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub
    apt-key add VMWARE-PACKAGING-GPG-RSA-KEY.pub
    echo 'deb https://packages.vmware.com/packages/ubuntu precise main' > /etc/apt/sources.list.d/vmware-tools.list
    apt-get update
    apt-get -y install open-vm-tools-deploypkg

    VMWARE_TOOLBOX_CMD_VERSION=$(vmware-toolbox-cmd -v)
    echo "==> Installed Open VM Tools ${VMWARE_TOOLBOX_CMD_VERSION}"

fi
