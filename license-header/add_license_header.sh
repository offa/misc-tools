#!/bin/bash

shopt -s globstar
shopt -s extglob

for f in **/*.@(cpp|h)
do
    echo " * Add license to <${f}>"
    cat license_header ${f} > ${f}.tmp
    mv ${f}.tmp ${f}
done
