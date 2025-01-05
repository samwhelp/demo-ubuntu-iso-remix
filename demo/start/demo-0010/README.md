

## Subject

* [Usage](#usage)
* [Article](#article)
* [Tips](#tips)




## Usage

``` sh
make main-steps
```




## Article

| Article |
| ------- |
| [改裝 Ubuntu](http://amitmason.blogspot.com/2011/04/ubuntu.html) |
| [How to Create Custom Debian Based ISO](https://dev.to/vaiolabs_io/how-to-create-custom-debian-based-iso-4g37) |




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

> create ./iso/live/filesystem.manifest

``` sh
sudo chroot squashfs-root dpkg-query -W --showformat='${Package} ${Version}\n' > ./iso/live/filesystem.manifest
```

> umount

``` sh
sudo umount -lf squashfs-root/dev
```




## qemu

run

``` sh
sudo apt-get install qemu-system-x86
```

run

``` sh
qemu -boot d -cdrom tmp/new.iso
```

or run

``` sh
qemu-system-x86_64 -boot d -cdrom tmp/new.iso
```

or run

``` sh
qemu-system-x86_64 -m 512M,slots=2,maxmem=1G -boot d -cdrom
```

> Keybind: `Ctrl + Alt + g` to let mouse leave qemu




## Search

* [custom linux distro iso](https://www.google.com/search?q=custom+linux+distro+iso)
* [create ubuntu iso from scratch](https://www.google.com/search?q=create+ubuntu+iso+from+scratch)




## Create a custom ubuntu live from scratch

| Link | GitHub |
| ---- | ------ |
| [How to create a custom Ubuntu live from scratch](https://mvallim.github.io/live-custom-ubuntu-from-scratch/) | [GitHub](https://github.com/mvallim/live-custom-ubuntu-from-scratch)




## Refer / Usage / xorriso

> [man xorriso](https://manpages.debian.org/stable/xorriso/xorriso.1.en.html)

| Refer / Usage / xorriso |
| ----------------------- |
| [iso-build](https://samwhelp.github.io/note-about-lika-live-build-config/read/issue/iso-build.html#explore) |
| [/usr/lib/live/build/binary_iso](https://salsa.debian.org/live-team/live-build/-/blob/master/scripts/build/binary_iso?ref_type=heads#L183-L192) |
| live-custom-ubuntu-from-scratch / scripts / [build.sh](https://github.com/mvallim/live-custom-ubuntu-from-scratch/blob/master/scripts/build.sh#L158-L191) |
| Nitrux / iso-tool / [iso-tool](https://github.com/Nitrux/iso-tool/blob/legacy/iso-tool#L163-L179) |
| Nitrux / tools / [mkiso](https://github.com/Nitrux/tools/blob/master/mkiso#L143-L154) |
| Arch Linux / archiso / [mkarchiso](https://gitlab.archlinux.org/archlinux/archiso/-/blob/master/archiso/mkarchiso?ref_type=heads#L1736-L1748) |




## Refer / Usage / grub-mkrescue

> [man grub-mkrescue](https://manpages.debian.org/stable/grub-common/grub-mkrescue.1.en.html)

| Refer / Usage / grub-mkrescue |
| ----------------------------- |
| [改裝 Ubuntu](http://amitmason.blogspot.com/2011/04/ubuntu.html) |
| Ubuntu 探索筆記 / 連結 / [iso-remix](https://samwhelp.github.io/note-about-ubuntu/read/link/iso-remix.html) |
| [Ubuntu Remixes](https://gitlab.com/ubuntu-unity/ubuntu-remixes) |
| Ubuntu Remixes / Skull / [Makefile](https://gitlab.com/ubuntu-unity/ubuntu-remixes/skull/-/blob/impish/Makefile#L75) |
| Ubuntu Remixes / Ubuntu Mate / [Makefile](https://gitlab.com/ubuntu-unity/ubuntu-remixes/ubuntu-mate/-/blob/impish/Makefile#L75) |
| Ubuntu Remixes / Ubuntu Cinnamon / [Makefile](https://gitlab.com/ubuntu-unity/ubuntu-remixes/ubuntu-cinnamon/-/blob/impish/Makefile#L78) |




## Refer / Usage / genisoimage

> [man genisoimage](https://manpages.debian.org/stable/genisoimage/genisoimage.1.en.html)

| Refer / Usage / genisoimage |
| --------------------------- |
| gxde-iso-builder / iso-template / [amd64-build.sh](https://github.com/GXDE-OS/gxde-iso-builder/blob/main/iso-template/amd64-build.sh#L3) |
| gxde-iso-builder-remix / iso-template / [amd64-build.sh](https://github.com/samwhelp/gxde-iso-builder-remix/blob/main/iso-template/amd64-build.sh#L3) |
| gxde-iso-builder-refactoring / iso-template / [amd64-build.sh](https://github.com/samwhelp/gxde-iso-builder-refactoring/blob/main/factory/iso-template/amd64-build.sh#L3) |
| gxde-iso-builder-enhance / iso-template / [amd64-build.sh](https://github.com/samwhelp/gxde-iso-builder-enhance/blob/main/factory/iso-template/amd64-build.sh#L3) |
| debian-iso-builder-start / iso-template / [amd64-build.sh](https://github.com/samwhelp/debian-iso-builder-start/blob/main/factory/iso-template/amd64-build.sh#L9) |




## Wiki

| Wiki |
| ---- |
| [IMG (file format)](https://en.wikipedia.org/wiki/IMG_(file_format)) |
| [IMG格式](https://zh.wikipedia.org/zh-tw/IMG%E6%A0%BC%E5%BC%8F) |
