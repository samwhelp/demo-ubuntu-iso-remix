
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




build:
	@./build.sh
.PHONY: build




clean:
	rm -rf ./tmp
.PHONY: clean
