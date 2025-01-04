#!/usr/bin/env bash


. ./config.sh


mod_binary_extract () {


	local squashfs_file_name="${REF_SQUASHFS_FILE_NAME}"
	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"

	cd ./tmp


	sudo rm -rf ./${squashfs_dir_name}

	sudo unsquashfs ${squashfs_file_name}


	cd "${OLDPWD}"


}


mod_binary_extract
