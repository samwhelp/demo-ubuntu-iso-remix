#!/usr/bin/env bash


. ./config.sh


mod_binary_renew () {


	cd ./tmp


	rm ./iso/casper/filesystem.squashfs

	cp new.filesystem.squashfs ./iso/casper/filesystem.squashfs


	cd "${OLDPWD}"


}


mod_binary_renew
