#!/bin/bash

echo "Checking out pulp-riscv-gnu-toolchain"
git checkout 940ca73fa36e17805f176a5096c19d1cf375d223
git submodule update -f --init --recursive

for folder in $(find rv32m1_patches/ -maxdepth 2 -type d)
do
    subfolder="./"${folder/#rv32m1_patches\/}

    if [[ -z $subfolder ]]
    then
    echo "ERROR: empty subfolder name"
    exit
    fi

    echo "Apply RM32M1 patch in" $subfolder
    # Remove the older patch
    rm ./$subfolder/*.patch
    # Copy new patch
    cp rv32m1_patches/$subfolder/*.patch ./$subfolder/
    # Apply patch
    cd $subfolder
    git am *.patch
    cd -
done

echo "RM32M1 patch applied finished"
