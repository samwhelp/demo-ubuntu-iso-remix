#!/usr/bin/env bash


. ./config.sh


mod_binary_renew () {


	local squashfs_file_name="${REF_SQUASHFS_FILE_NAME}"
	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"

	local new_squashfs_file_name="new.${squashfs_file_name}"

	cd ./tmp


	rm ./iso/casper/${squashfs_file_name}

	cp ${new_squashfs_file_name} ./iso/casper/${squashfs_file_name}


	cd "${OLDPWD}"


}


mod_binary_renew
