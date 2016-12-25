DIR_RISCV64	:= $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
DIR_WORKING	:= $(DIR_RISCV64)/working
POKY_REPO	:= https://github.com/riscv/riscv-poky.git

riscv-poky-new:
	@test -d $(DIR_WORKING) || mkdir -p $(DIR_WORKING)
	@echo "Remove old riscv-poky and create a new one ..."
	@rm -rf $(DIR_WORKING)/riscv-poky
	@cd $(DIR_WORKING);			\
		git clone $(POKY_REPO);

riscv-poky-build:
	@echo "Run bitbake, it may take up to 4 hours ..."
	@cd $(DIR_WORKING)/riscv-poky/build;	\
		bitbake core-image-riscv;

riscv-poky-run:
	@echo "Run qemu ..."
	@cd $(DIR_WORKING)/riscv-poky/build;	\
		runqemu qemuriscv64 nographic slirp;
