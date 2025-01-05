#!/usr/bin/env bash


. ./config.sh


mod_main_steps () {


	./prepare.sh


	./iso-download.sh
	./iso-extract.sh


	./img-copy.sh
	./img-extract.sh


	./chroot-session.sh


	./img-archive.sh
	./img-renew.sh


	./iso-archive.sh


}


mod_main_steps
