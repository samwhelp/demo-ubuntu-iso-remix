#!/usr/bin/env bash


. ./config.sh


mod_img_extract () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local squashfs_file_name="${REF_SQUASHFS_FILE_NAME}"
	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"


	cd "${tmp_dir_path}"


	sudo rm -rf ./${squashfs_dir_name}

	sudo unsquashfs ${squashfs_file_name}


	cd "${OLDPWD}"


}


mod_img_extract
