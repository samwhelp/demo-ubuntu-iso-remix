#!/usr/bin/env bash


. ./config.sh


mod_chroot_mount () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"


	cd "${tmp_dir_path}"


	##
	## https://github.com/mvallim/live-custom-ubuntu-from-scratch/blob/master/scripts/build.sh#L46-L52
	##

	sudo mount --bind /dev ${squashfs_dir_name}/dev
	sudo mount --bind /run ${squashfs_dir_name}/run

	sudo chroot ${squashfs_dir_name} mount none -t proc /proc
	sudo chroot ${squashfs_dir_name} mount none -t sysfs /sys
	sudo chroot ${squashfs_dir_name} mount none -t devpts /dev/pts


	cd "${OLDPWD}"


}


mod_chroot_mount
