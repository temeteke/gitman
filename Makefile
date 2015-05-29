BINDIR := ~/bin

.PHONY: all install uninstall
all:

install: $(BINDIR)
	cp gitman $(BINDIR)/

uninstall:
	rm $(BINDIR)/gitman

$(BINDIR):
	mkdir $(BINDIR)
