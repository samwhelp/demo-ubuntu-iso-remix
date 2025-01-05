

## Subject

* [Usage](#usage)
* [Article](#article)
* [Tips](#tips)




## Usage

``` sh
make main-steps
```




## Search

* [custom linux distro iso](https://www.google.com/search?q=custom+linux+distro+iso)
* [create ubuntu iso from scratch](https://www.google.com/search?q=create+ubuntu+iso+from+scratch)




## Article

| Article |
| ------- |
| [改裝 Ubuntu](http://amitmason.blogspot.com/2011/04/ubuntu.html) |
| [How to Create Custom Debian Based ISO](https://dev.to/vaiolabs_io/how-to-create-custom-debian-based-iso-4g37) |




## Create a custom ubuntu live from scratch

| Link | GitHub |
| ---- | ------ |
| [How to create a custom Ubuntu live from scratch](https://mvallim.github.io/live-custom-ubuntu-from-scratch/) | [GitHub](https://github.com/mvallim/live-custom-ubuntu-from-scratch)




## Refer / Usage / xorriso

| Refer / Usage / xorriso |
| ----- |
| [iso-build](https://samwhelp.github.io/note-about-lika-live-build-config/read/issue/iso-build.html#explore) |
| [/usr/lib/live/build/binary_iso](https://salsa.debian.org/live-team/live-build/-/blob/master/scripts/build/binary_iso?ref_type=heads#L183-L192) |
| live-custom-ubuntu-from-scratch / scripts / [build.sh](https://github.com/mvallim/live-custom-ubuntu-from-scratch/blob/master/scripts/build.sh#L158-L191) |
| Nitrux / iso-tool / [iso-tool](https://github.com/Nitrux/iso-tool/blob/legacy/iso-tool#L163-L179) |
| Nitrux / tools / [mkiso](https://github.com/Nitrux/tools/blob/master/mkiso#L143-L154) |




## Wiki

| Wiki |
| ---- |
| [IMG (file format)](https://en.wikipedia.org/wiki/IMG_(file_format)) |
| [IMG格式](https://zh.wikipedia.org/zh-tw/IMG%E6%A0%BC%E5%BC%8F) |




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
