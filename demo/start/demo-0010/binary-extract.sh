#!/usr/bin/env bash


. ./config.sh


mod_binary_extract () {


	cd ./tmp


	sudo rm -rf ./squashfs-root

	sudo unsquashfs filesystem.squashfs


	cd "${OLDPWD}"


}


mod_binary_extract
