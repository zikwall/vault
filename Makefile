PROJECTNAME=$(shell basename "$(PWD)")
SCRIPT_AUTHOR=Andrey Kapitonov <andrey.kapitonov.96@gmail.com>
SCRIPT_VERSION=0.0.1.dev

bootstrap:
ifeq (,$(wildcard ./vault))
	@echo "Download Hashicorp Vault binary & Remove temp files"
	wget -q -O tmp.zip https://releases.hashicorp.com/vault/1.4.0/vault_1.4.0_linux_amd64.zip && unzip tmp.zip && rm tmp.zip
endif

help:
	@echo -e "Usage: make [target] ...\n"
	@echo -e "bootstrap 	: Download a project executable file"
	@echo -e '\nProject name: ' $(PROJECTNAME)
	@echo -e "Written by $(SCRIPT_AUTHOR), version $(SCRIPT_VERSION)"
	@echo -e "Please report any bug or error to the author."

.PHONY: bootstrap help download