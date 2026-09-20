BINDIR := $(HOME)/bin
XDG_DATA_HOME ?= $(HOME)/.local/share
COMPLETIONDIR := $(XDG_DATA_HOME)/bash-completion/completions

.PHONY: all install install-bin install-completion uninstall uninstall-bin uninstall-completion
all:

install: install-bin install-completion

install-bin: $(BINDIR)
	cp -a gitman $(BINDIR)/

install-completion: $(COMPLETIONDIR)
	cp -a completion/gitman.bash $(COMPLETIONDIR)/gitman

uninstall: uninstall-bin uninstall-completion

uninstall-bin:
	rm -f $(BINDIR)/gitman

uninstall-completion:
	rm -f $(COMPLETIONDIR)/gitman

$(BINDIR):
	mkdir -p $(BINDIR)

$(COMPLETIONDIR):
	mkdir -p $(COMPLETIONDIR)
