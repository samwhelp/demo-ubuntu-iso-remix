#!/usr/bin/env bash


. ./config.sh


mod_iso_extract () {

	local iso_file_name="${REF_ISO_FILE_NAME}"

	##
	## xorriso -osirrox on -indev "ubuntu-20.04.4-live-server-amd64.iso" -extract / iso && chmod -R +w iso
	##

	cd ./tmp


	xorriso -osirrox on -indev "${iso_file_name}" -extract / iso && chmod -R +w iso


	cd "${OLDPWD}"


}


mod_iso_extract
