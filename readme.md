## Overview

The RV32M1 GNU toolchain is based on the
[pulp-riscv-gnu-toolchain](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain).
This repo contains the patches for RV32M1. For easy use, a script _apply\_rv32m1\_patches.sh_
is provided to help applying the patch.

## How to use

1. Clone the [pulp-riscv-gnu-toolchain](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain)
   to your local computer, for example, in the folder _pulp-riscv-gnu-toolchain_
2. Copy _rv32m1\_patches_ and _apply\_rv32m1\_patches.sh_ to the folder _pulp-riscv-gnu-toolchain_.
3. Run the script _apply\_rv32m1\_patches.sh_ in the folder _pulp-riscv-gnu-toolchain_.
4. Follow the build instructions in [rv32m1_sdk_riscv](https://github.com/open-isa-rv32m1/rv32m1_sdk_riscv)
   to build the toolchain.
