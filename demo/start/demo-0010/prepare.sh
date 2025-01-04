#!/usr/bin/env bash


. ./config.sh


mod_prepare () {


	local package_list_install="${REF_PACKAGE_LIST_INSTALL}"

	##
	## sudo apt-get update && sudo apt-get install -y xorriso
	## sudo apt-get install -y squashfs-tools syslinux syslinux-efi isolinux
	## sudo apt-get install -y fakeroot
	##

	sudo apt-get update && sudo apt-get install -y ${package_list_install}


}


mod_prepare
