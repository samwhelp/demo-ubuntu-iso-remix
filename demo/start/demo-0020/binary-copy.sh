#!/usr/bin/env bash


. ./config.sh


mod_binary_copy () {


	local squashfs_file_name="${REF_SQUASHFS_FILE_NAME}"


	cd ./tmp

	rm -f ./${squashfs_file_name}

	cp iso/casper/${squashfs_file_name} ./${squashfs_file_name}


	cd "${OLDPWD}"


}


mod_binary_copy
