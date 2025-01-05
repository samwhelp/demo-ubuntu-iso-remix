#!/usr/bin/env bash


. ./config.sh


mod_img_archive () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local squashfs_file_name="${REF_SQUASHFS_FILE_NAME}"
	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"

	local new_squashfs_file_name="new.${squashfs_file_name}"


	cd "${tmp_dir_path}"


	sudo mksquashfs ${squashfs_dir_name}/ ${new_squashfs_file_name} -comp xz -b 1M -noappend


	cd "${OLDPWD}"


}


mod_img_archive
