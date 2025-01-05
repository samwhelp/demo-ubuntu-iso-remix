#!/usr/bin/env bash


. ./config.sh


mod_img_renew () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local squashfs_file_name="${REF_SQUASHFS_FILE_NAME}"
	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"

	local new_squashfs_file_name="new.${squashfs_file_name}"


	cd "${tmp_dir_path}"


	rm ./iso/casper/${squashfs_file_name}

	cp ${new_squashfs_file_name} ./iso/casper/${squashfs_file_name}


	cd "${OLDPWD}"


}


mod_img_renew
