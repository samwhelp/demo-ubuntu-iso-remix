
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make iso-download'
	@echo
	@echo '	$$ make iso-extract'
	@echo
	@echo '	$$ make img-copy'
	@echo
	@echo '	$$ make img-extract'
	@echo
	@echo '	$$ make img-archive'
	@echo
	@echo '	$$ make img-renew'
	@echo
	@echo '	$$ make iso-archive'
	@echo
	@echo
	@echo
	@echo
	@echo '	$$ make chroot-session'
	@echo
	@echo '	$$ make chroot-resolve'
	@echo
	@echo '	$$ make chroot-mount'
	@echo
	@echo '	$$ make chroot-do'
	@echo
	@echo '	$$ make chroot-clean'
	@echo
	@echo '	$$ make chroot-umount'
	@echo
	@echo
	@echo
	@echo
	@echo '	$$ make qemu-prepare'
	@echo
	@echo '	$$ make qemu-load-old'
	@echo
	@echo '	$$ make qemu-load-new'
	@echo
.PHONY: help




prepare:
	@./prepare.sh
.PHONY: prepare




iso-download:
	@./iso-download.sh
.PHONY: iso-download


iso-extract:
	@./iso-extract.sh
.PHONY: iso-extract






img-copy:
	@./img-copy.sh
.PHONY: img-copy


img-extract:
	@./img-extract.sh
.PHONY: img-extract


img-archive:
	@./img-archive.sh
.PHONY: img-archive


img-renew:
	@./img-renew.sh
.PHONY: img-renew




iso-archive:
	@./iso-archive.sh
.PHONY: iso-archive




chroot-session:
	@./chroot-session.sh
.PHONY: chroot-session


chroot-resolve:
	@./chroot-resolve.sh
.PHONY: chroot-resolve


chroot-mount:
	@./chroot-mount.sh
.PHONY: chroot-mount


chroot-do:
	@./chroot-do.sh
.PHONY: chroot-do


chroot-clean:
	@./chroot-clean.sh
.PHONY: chroot-clean


chroot-unmount:
	@./chroot-unmount.sh
.PHONY: chroot-unmount




qemu-prepare:
	@./qemu-prepare.sh
.PHONY: qemu-prepare


qemu-load-old:
	@./qemu-load-old.sh
.PHONY: qemu-load-old


qemu-load-new:
	@./qemu-load-new.sh
.PHONY: qemu-load-new




main-steps:
	@./main-steps.sh
.PHONY: main-steps




clean:
	rm -rf ./tmp
.PHONY: clean
