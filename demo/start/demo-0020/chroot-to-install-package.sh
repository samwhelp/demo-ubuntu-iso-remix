#!/usr/bin/env bash


. ./config.sh


mod_chroot_to_install_pacakage () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local squashfs_dir_name="${REF_SQUASHFS_DIR_NAME}"

	local package_list_install="nano vim micro"


	cd "${tmp_dir_path}"


	sudo chroot ${squashfs_dir_name} apt-get update

	sudo chroot ${squashfs_dir_name} apt-get -y install ${package_list_install}


	cd "${OLDPWD}"


}


mod_chroot_to_install_pacakage
