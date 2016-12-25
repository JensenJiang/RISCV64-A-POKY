# RISCV64 POKY GUIDE
## Prerequisite
`$ sudo apt-get install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc gcc libc6-dev pkg-config bridge-utils uml-utilities zlib1g-dev libglib2.0-dev autoconf automake libtool libsdl1.2-dev`

## Build and run
1. `make riscv-poky-new`: Create working directory and clone from [riscv-poky Github Repo](https://github.com/riscv/riscv-poky)
2. `source oe-init-build-env; cd ..`
2. `make riscv-poky-build`: Run bitbake to build.
3. `make riscv-poky-run`: Run qemu.

# Report
- [About POKY](https://github.com/JensenJiang/RISCV64-A-POKY/wiki/About-POKY): A brief introduction to how POKY works.
- [About BitBake](https://github.com/JensenJiang/RISCV64-A-POKY/wiki/About-BitBake): Introduction to BitBake.
- [Presentation PDF](http://oa15t098u.bkt.clouddn.com/document/presentation/riscv-poky.pdf)
