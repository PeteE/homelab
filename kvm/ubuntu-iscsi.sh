#!/bin/bash
virt-install --connect qemu:///system --arch=x86_64 -n docker -r 1024 --cpu host --vcpus=2 \
-w bridge=br0,model=virtio \
-w bridge=br1,model=virtio \
--pxe --nodisks \
--graphics vnc,listen=0.0.0.0 --noautoconsole 
