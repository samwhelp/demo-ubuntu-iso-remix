#!/usr/bin/env bash


. ./config.sh


mod_chroot_pre () {


	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"


	cd ./tmp


	sudo chroot ${squashfs_dir_name} rm -f /etc/hosts
	sudo chroot ${squashfs_dir_name} rm -f /etc/resolv.conf
	sudo chroot ${squashfs_dir_name} rm -f /root/.bash_history
	sudo chroot ${squashfs_dir_name} rm -f /tmp/*
	sudo chroot ${squashfs_dir_name} rm -f /var/tmp/*


	sudo chroot ${squashfs_dir_name} apt-get clean


	cd "${OLDPWD}"


}


mod_chroot_pre
