#!/bin/bash

shopt -s globstar
shopt -s extglob

FILTER_ARG=${1}
FILENAME_ARG=${2:-license_header}

FILTER=${FILTER_ARG//,/\|}

echo -e "Header: ${FILENAME_ARG}\nFilter: '${FILTER_ARG}'\n"



for f in **/*.@(${FILTER})
do
    echo " * Add license to <${f}>"
    cat ${FILENAME_ARG} ${f} > ${f}.tmp
    mv ${f}.tmp ${f}
done
