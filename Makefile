#                       ___  ____     ____             __ _
# _ __ ___   __ _  ___ / _ \/ ___|   / ___|___  _ __  / _(_) __ _
#| '_ ` _ \ / _` |/ __| | | \___ \  | |   / _ \| '_ \| |_| |/ _` |
#| | | | | | (_| | (__| |_| |___) | | |__| (_) | | | |  _| | (_| |
#|_| |_| |_|\__,_|\___|\___/|____/   \____\___/|_| |_|_| |_|\__, |
#                                                           |___/
#
# macOS Config v0.0.3
# https://maccfg.com
#
# Copyright (c) Sebastien Rousseau 2022. All rights reserved
# Licensed under the MIT license
#

.DEFAULT_GOAL := help

#
# Build tasks
#

# @HELP Install.
install:
	@echo
	@echo "Installing..."
	npx pnpm install

# @HELP npx check updates.
update:
	@echo
	@echo "Checking npx updates..."
	npx npm-check-updates -u

# @HELP Build.
build:
	@echo
	@echo "Building..."
	rm -rf dist
	npx pnpm build

# @HELP Publish.
publish:
	@echo
	@echo "Publishing maccfg..."
	npx publish

#
# Node Module
#

# @HELP node_modules.
node_modules: package.json
	@npm install

#
# Clean up tasks
#

# @HELP Run directory clean.
clean: clean-node

# @HELP Run node_modules clean.
clean-node:
	@rm -rf node_modules

#
# Flags:
#

# @HELP Install development dependencies only.
DEV_ONLY ?= false

# @HELP Directory to install pnpm packages into.
PNPM_INSTALL_DIR ?= ./

# @HELP Skip update check for dependencies.
SKIP_UPDATE ?= false

# @HELP Publish package as public (npm) instead of GitHub.
PUBLISH_PUBLIC ?= false

# @HELP Display the help menu.
help:
	@ echo
	@ echo '  Usage:'
	@ echo ''
	@ echo '    make <target> [flags...]'
	@ echo ''
	@ echo '  Targets:'
	@ echo ''
	@ awk '/^#/{ comment = substr($$0,3) } comment && /^[a-zA-Z][a-zA-Z0-9_-]+ ?:/{ print "   ", $$1, comment }' $(MAKEFILE_LIST) | column -t -s ':' | sort
	@ echo ''
	@ echo '  Flags:'
	@ echo ''
	@ awk '/^#/{ comment = substr($$0,3) } comment && /^[a-zA-Z][a-zA-Z0-9_-]+ ?\?=/{ print "   ", $$1, $$2, comment }' $(MAKEFILE_LIST) | column -t -s '?=' | sort
	@ echo ''


.PHONY: clean, clean-cov, clean-node, coverage, help, install, install-deps, lint, node_modules, publish, run, run-base64, run-memorable, run-strong, test, update-deps
