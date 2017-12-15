#!/bin/bash

shopt -s globstar
shopt -s extglob

FILTER_ARG=${1}
FILTER=${FILTER_ARG//,/\|}

echo -e "Filter: '${FILTER_ARG}'\n"


for f in **/*.@(${FILTER})
do
    echo " * Add license to <${f}>"
    cat license_header ${f} > ${f}.tmp
    mv ${f}.tmp ${f}
done
