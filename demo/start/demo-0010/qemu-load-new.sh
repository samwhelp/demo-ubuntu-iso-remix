#!/usr/bin/env bash


. ./config.sh


mod_qemu_load_new () {


	local iso_file_name="${REF_ISO_FILE_NAME}"
	local new_iso_file_name="new.${iso_file_name}"


	cd ./tmp


	qemu-system-x86_64 -boot d -cdrom "${new_iso_file_name}"


	cd "${OLDPWD}"


}


mod_qemu_load_new
