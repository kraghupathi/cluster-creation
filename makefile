#SHELL := /bin/bash
PWD=$(shell pwd)
STATUS=0

all:  build

init: 
	./init.sh

build: init
	make -f tangle-make -k all

export: build
	rsync -a ${PWD}/build/docs/ root@files.vlabs.ac.in:/var/www/html/presentations/2017-11-29-iit-delhi-presentation/

clean:	
	make -f tangle-make clean

