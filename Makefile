all: 1.10.4-alpine/Dockerfile

%/Dockerfile: generator.sh
	mkdir -p $*
	./generator.sh $* >$@
