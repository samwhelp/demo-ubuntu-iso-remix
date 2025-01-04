#!/usr/bin/env bash


. ./config.sh


mod_chroot_unmount () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"


	cd "${tmp_dir_path}"


	##
	## https://github.com/mvallim/live-custom-ubuntu-from-scratch/blob/master/scripts/build.sh#L54-L60
	##

	sudo chroot ${squashfs_dir_name} umount /proc
	sudo chroot ${squashfs_dir_name} umount /sys
	sudo chroot ${squashfs_dir_name} umount /dev/pts

	sudo umount ${squashfs_dir_name}/dev
	sudo umount ${squashfs_dir_name}/run


	cd "${OLDPWD}"


}


mod_chroot_unmount
