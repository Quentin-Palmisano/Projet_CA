
SRC=tests/t0.txt

TMP=tests/bc.code

all:
	make -C compiler
	make -C vm

test:
	compiler/compile $(SRC) > $(TMP)
	vm/minizam  $(TMP)

runtest:	all
	for f in $(shell ls tests/*.txt) ; do \
         echo SRC=$$f ;\
         make test SRC=$$f ; \
    done
clean:
	make clean -C compiler
	make clean -C vm
	rm -rf $(TMP)
