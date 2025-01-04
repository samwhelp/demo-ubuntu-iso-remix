#!/usr/bin/env bash


. ./config.sh


mod_binary_archive () {


	local squashfs_file_name="${REF_SQUASHFS_FILE_NAME}"
	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"

	local new_squashfs_file_name="new.${squashfs_file_name}"


	cd ./tmp


	sudo mksquashfs ${squashfs_dir_name}/ ${new_squashfs_file_name} -comp xz -b 1M -noappend


	cd "${OLDPWD}"


}


mod_binary_archive
