
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
	@echo '	$$ make binary-copy'
	@echo
	@echo '	$$ make binary-extract'
	@echo
	@echo '	$$ make binary-archive'
	@echo
	@echo '	$$ make binary-renew'
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
	@echo '	$$ make chroot-pre'
	@echo
	@echo '	$$ make chroot-do'
	@echo
	@echo '	$$ make chroot-clean'
	@echo
	@echo '	$$ make chroot-post'
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






binary-copy:
	@./binary-copy.sh
.PHONY: binary-copy


binary-extract:
	@./binary-extract.sh
.PHONY: binary-extract


binary-archive:
	@./binary-archive.sh
.PHONY: binary-archive


binary-renew:
	@./binary-renew.sh
.PHONY: binary-renew




iso-archive:
	@./iso-archive.sh
.PHONY: iso-archive




chroot-session:
	@./chroot-session.sh
.PHONY: chroot-session


chroot-resolve:
	@./chroot-resolve.sh
.PHONY: chroot-resolve


chroot-pre:
	@./chroot-pre.sh
.PHONY: chroot-pre


chroot-do:
	@./chroot-do.sh
.PHONY: chroot-do


chroot-clean:
	@./chroot-clean.sh
.PHONY: chroot-clean


chroot-post:
	@./chroot-post.sh
.PHONY: chroot-post




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
