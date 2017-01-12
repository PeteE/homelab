#!/bin/bash
virt-install --connect qemu:///system --arch=x86_64 -n win2016 -r 8192 --cpu host --vcpus=8 --hvm \
--disk /dev/ssd0/win2016,device=disk,bus=virtio \
--cdrom /home/petee/14393.0.160715-1616.RS1_RELEASE_SERVER_EVAL_X64FRE_EN-US.ISO \
-w bridge=br0,model=virtio \
--os-type windows \
--graphics vnc,listen=0.0.0.0 --noautoconsole 

#--disk path=/home/petee/virtio-win.iso,device=cdrom \
