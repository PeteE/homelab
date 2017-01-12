#!/bin/bash
virt-install --connect qemu:///system --arch=x86_64 -n freebsd12 -r 2048 --cpu host --vcpus=10 \
--disk /var/lib/libvirt/san/freebsd12.img,size=10 \
-w bridge=br0,model=virtio \
-w bridge=br1,model=virtio \
--cdrom /var/lib/libvirt/san/FreeBSD-12.0-CURRENT-amd64-20170105-r311461-bootonly.iso \
--graphics vnc,listen=0.0.0.0 --noautoconsole 
