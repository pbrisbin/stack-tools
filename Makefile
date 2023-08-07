SRCS := $(wildcard $(PWD)/bin/stack-*)

DESTDIR ?=
PREFIX ?= /usr/local
# TODO: dist, install, uninstall

.PHONY: link
link:
	ln -s $(SRCS) "$(HOME)/.local/bin"
