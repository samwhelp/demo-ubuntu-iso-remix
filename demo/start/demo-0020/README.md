

## Refer

* [How to Create Custom Debian Based ISO](https://dev.to/vaiolabs_io/how-to-create-custom-debian-based-iso-4g37)
* [Custom Ubuntu ISO](http://amitmason.blogspot.com/2011/04/ubuntu.html)
* [iso-build](https://samwhelp.github.io/note-about-lika-live-build-config/read/issue/iso-build.html#explore)
* [/usr/lib/live/build/binary_iso](https://salsa.debian.org/live-team/live-build/-/blob/master/scripts/build/binary_iso?ref_type=heads#L189-L192)
* [live-custom-ubuntu-from-scratch](https://github.com/mvallim/live-custom-ubuntu-from-scratch)


## Usage

``` sh
make main-steps
```




## Tips

## chroot

> cd ./tmp dir

``` sh
cd ./tmp
```

> cp /etc/host and /etc/resolv.conf

```
sudo cp /etc/hosts squashfs-root/etc
sudo cp /etc/resolv.conf squashfs-root/etc
```

> bind

``` sh
sudo mount --bind /dev squashfs-root/dev
```

> chroot

``` sh
sudo chroot squashfs-root
```

> in chroot, bind extra

``` sh
mount -t proc none /proc
mount -t sysfs none /sys
mount -t devpts none /dev/pts
```

> then try network

``` sh
ping www.google.com
```

> run 

``` sh
sudo apt-get update
```

> run to install extra package

``` sh
sudo apt-get install nano vim micro
```

> clean

``` sh
rm -f /etc/hosts
rm -f /etc/resolv.conf
rm -f /root/.bash_history
rm -f /tmp/*
rm -f /var/tmp/*

apt-get clean
```

> umount

``` sh
umount /dev/pts
umount /sys
umount -lf /proc
```

> exit chroot

``` sh
exit
```

> create ./iso/casper/filesystem.manifest

``` sh
sudo chroot squashfs-root dpkg-query -W --showformat='${Package} ${Version}\n' > ./iso/casper/filesystem.manifest
```

> umount

``` sh
sudo umount -lf squashfs-root/dev
```




## qemu

``` sh
sudo apt-get install qemu-system-x86
```

``` sh
qemu -boot d -cdrom tmp/new.iso
```

``` sh
qemu-system-x86_64 -boot d -cdrom tmp/new.iso
```

Keybind: `Ctrl + Alt + g` to let mouse leave qemu
