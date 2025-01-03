#!/usr/bin/env bash


. ./config.sh


mod_binary_copy () {


	cd ./tmp

	rm -f ./filesystem.squashfs

	cp iso/casper/filesystem.squashfs .


	cd "${OLDPWD}"


}


mod_binary_copy
