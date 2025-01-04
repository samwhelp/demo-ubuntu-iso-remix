#!/usr/bin/env bash


##
## ## Link
##
## * https://releases.ubuntu.com/noble/ubuntu-24.04.1-live-server-amd64.iso
##

. ./config.sh


mod_iso_download () {


	local tmp_dir_path="${REF_TMP_DIR_PATH}"

	local iso_file_name="${REF_ISO_FILE_NAME}"
	local iso_url="${REF_ISO_URL}"

	#curl -X GET -OL "${iso_url}"

	mkdir -p ${tmp_dir_path}

	wget -c "${iso_url}" -O "${tmp_dir_path}/${iso_file_name}"


}


mod_iso_download
