
KERNEL_VER:=$(shell pushd /usr/src/linux > /dev/null ; make kernelrelease ; popd > /dev/null)
KERNEL_DIR:=/lib/modules/$(KERNEL_VER)/build
INSTALL_DIR:=/lib/modules/$(KERNEL_VER)/ttyPos

obj-m := ttyPos.o


modules modules_install clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(shell pwd) $@
