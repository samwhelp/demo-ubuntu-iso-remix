#!/usr/bin/env bash


. ./config.sh


mod_main_steps () {


	./prepare.sh


	./iso-download.sh
	./iso-extract.sh


	./binary-copy.sh
	./binary-extract.sh


	##
	## ## TODO: chroot
	##


	./binary-archive.sh
	./binary-renew.sh


	./iso-archive.sh


}


mod_main_steps
