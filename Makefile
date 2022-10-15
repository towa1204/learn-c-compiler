CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

learncc: $(OBJS)
		$(CC) -o learncc $(OBJS) $(LDFLAGS)

$(OBJS): learncc.h

test: learncc
		./test.sh

clean:
		rm -f learncc *.o *~ tmp*

.PHONY: test clean