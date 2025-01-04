#!/usr/bin/env bash


. ./config.sh


mod_chroot_session () {


	./chroot-resolve.sh

	./chroot-mount.sh

	./chroot-do.sh

	./chroot-clean.sh

	./chroot-unmount.sh


}


mod_chroot_session
