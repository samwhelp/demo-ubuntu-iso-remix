#!/usr/bin/env bash


. ./config.sh


mod_binary_archive () {


	cd ./tmp


	sudo mksquashfs squashfs-root/ new.filesystem.squashfs -comp xz -b 1M -noappend


	cd "${OLDPWD}"


}


mod_binary_archive
