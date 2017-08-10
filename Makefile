SHELL = bash -o pipefail -c
PREFIX ?= /usr


default :

install :
	install -d $(DESTDIR)$(PREFIX)/bin
	find $(CURDIR)/bin -type f -print0 | xargs -0 -n1 -I@ install -m 0755 @ $(DESTDIR)$(PREFIX)/bin

