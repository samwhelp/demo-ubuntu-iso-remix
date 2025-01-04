#!/usr/bin/env bash


. ./config.sh


mod_chroot_resolve () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"


	cd "${tmp_dir_path}"


	sudo cp -f /etc/hosts ${squashfs_dir_name}/etc/hosts
	sudo cp -f /etc/resolv.conf ${squashfs_dir_name}/etc/resolv.conf


	cd "${OLDPWD}"


}


mod_chroot_resolve
