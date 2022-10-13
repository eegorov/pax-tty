
KERNELRELEASE ?= $(shell uname -r)
KDIR ?= /lib/modules/$(KERNELRELEASE)/build
PWD ?= $(shell pwd)

obj-m := ttyPos.o

default: modules
install: modules_install

modules modules_install clean:
	$(MAKE) -C $(KDIR) M=$(PWD) $@

