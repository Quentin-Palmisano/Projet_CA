
SRC=tests/t0.txt

TMP=bytecode/byte.txt

all:
	make -C compiler
	make -C vm

test:
	./compiler/eval $(SRC)
	vm/minizam  $(TMP)

runtest:	all
	for f in $(shell ls tests/*.txt) ; do \
         echo SRC=$$f ;\
         make test SRC=$$f ; \
    done
runnostests: all
	for f in $(shell ls nosTests/*.txt) ; do \
         echo SRC=$$f ;\
         make test SRC=$$f ; \
    done
clean:
	make clean -C compiler
	make clean -C vm
	rm -rf $(TMP)
