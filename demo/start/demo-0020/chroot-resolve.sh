#!/usr/bin/env bash


. ./config.sh


mod_chroot_resolve () {


	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"


	cd ./tmp


	sudo cp -f /etc/hosts ${squashfs_dir_name}/etc/hosts
	sudo cp -f /etc/resolv.conf ${squashfs_dir_name}/etc/resolv.conf


	cd "${OLDPWD}"


}


mod_chroot_resolve
