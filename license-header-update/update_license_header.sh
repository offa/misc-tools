#!/bin/bash

shopt -s globstar
shopt -s extglob

FILTER_ARG=${1}
OLD_STR=${2}
NEW_STR=${3}

FILTER=${FILTER_ARG//,/\|}

if (( $# < 3 ))
then
    echo "Argument(s) missing"
    exit 1
fi


echo -e "Old Header: '${OLD_STR}'\nNew Header: '${NEW_STR}'\nFilter: '${FILTER_ARG}'\n"



for f in **/*.@(${FILTER})
do
    echo " * Add license to <${f}>"
    sed -i "s/${OLD_STR}/${NEW_STR}/g" ${f}
done
