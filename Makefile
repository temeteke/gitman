BINDIR := ~/bin

.PHONY: all install uninstall
all:

install: $(BINDIR)
	cp -a gitman $(BINDIR)/

uninstall:
	rm -f $(BINDIR)/gitman

$(BINDIR):
	mkdir -p $(BINDIR)
