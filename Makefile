.PHONY: all install uninstall
all:
install:
	ln -fs ${PWD}/gitman ~/bin/
uninstall:
	rm ~/bin/gitman
