#1 
```bash
sudo apt install gnome-boxes qemu-kvm libvirt-daemon-system libvirt-clients

sudo usermod -a -G kvm $USER

sudo sed -i -e 's/\#group\ =\ "root"/group=kvm/g' /etc/libvirt/qemu.conf
```