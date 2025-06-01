obj-m += nf_deaf.o
KDIR := /lib/modules/$(shell uname -r)/build
cflags-y := -I/usr/src/kernels/$(shell uname -r)/include

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
