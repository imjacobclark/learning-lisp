COMPILER=sbcl
FLAGS=--noinform
ENTRY=main.cl
OUTPUT=main
BINDIR=build/

all:
	mkdir build; $(COMPILER) $(FLAGS) --eval "(load \"$(ENTRY)\")" --eval "(sb-ext:save-lisp-and-die \"$(BINDIR)$(OUTPUT)\" :toplevel #'main :executable t)" --eval "(quit)" > /dev/null