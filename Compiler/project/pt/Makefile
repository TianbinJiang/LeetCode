# Makefile for PT and S/SL 
# Usage:  make 

all: install

install:
	make pt ACTION=install

pt:
	cd cmd; make $(ACTION)
	cd parser; make $(ACTION)
	cd semantic; make $(ACTION)
	cd coderlinux; make $(ACTION)
	cd ptruntimelinux; make $(ACTION)
	cd ptam; make $(ACTION)

clean:
	make pt ACTION=clean
	/bin/rm -f bin/pt* lib/pt/*
