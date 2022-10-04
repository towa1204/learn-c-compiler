CFLAGS=-std=c11 -g -static

learncc: learncc.c

test: learncc
	./test.sh

clean:
	rm -f learncc *.o *~ tmp*

.PHONY: test clean
