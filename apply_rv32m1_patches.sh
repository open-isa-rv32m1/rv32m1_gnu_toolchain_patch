#!/bin/bash

echo "Checking out pulp-riscv-gnu-toolchain"
git checkout 940ca73fa36e17805f176a5096c19d1cf375d223
git submodule update -f --init --recursive

# Copy patch
echo "Copy RM32M1 patch"
cp -r rv32m1_patches/* ./

# Apply patch
echo "Apply RM32M1 patch"
git am *.patch

for folder in $(ls -d rv32m1_patches/*/)
do
    subfolder=${folder/#rv32m1_patches\/}
    echo "Apply RM32M1 patch in" $subfolder
    cd $subfolder
    git am *.patch
    cd -
done

echo "RM32M1 patch applied finished"
