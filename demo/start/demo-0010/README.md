

## Refer

* [How to Create Custom Debian Based ISO](https://dev.to/vaiolabs_io/how-to-create-custom-debian-based-iso-4g37)
* [Custom Ubuntu ISO](http://amitmason.blogspot.com/2011/04/ubuntu.html)
* [iso-build](https://samwhelp.github.io/note-about-lika-live-build-config/read/issue/iso-build.html#explore)


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
