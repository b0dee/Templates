include makefile.config

SOURCE = $(wildcard *.c)
OBJS = ($SOURCE:.c=.o)
DEPS = ($SOURCE:.c=.d)
-include {$DEPS}

help:
	-@echo "make ... - make the executable"
	-@echo "make clean - remove object and dependency files"
	-@echo "make fullclean - remove object, dependency and produced executable files"

clean:
	${REMOVE} ${OBJS} ${DEPS}

fullclean:
	${REMOVE} ${OBJS} ${DEPS} ...
