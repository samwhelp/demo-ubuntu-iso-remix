#!/usr/bin/env bash


. ./config.sh


mod_chroot_session () {


	./chroot-resolve.sh

	./chroot-pre.sh

	./chroot-clean.sh

	./chroot-post.sh


}


mod_chroot_session
