#!/usr/bin/env bash


. ./config.sh


mod_qemu_load_new () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local iso_file_name="${REF_ISO_FILE_NAME}"


	cd "${tmp_dir_path}"


	#qemu-system-x86_64 -boot d -cdrom "${iso_file_name}"

	qemu-system-x86_64 -m 512M,slots=2,maxmem=1G -boot d -cdrom "${iso_file_name}"


	cd "${OLDPWD}"


}


mod_qemu_load_new
