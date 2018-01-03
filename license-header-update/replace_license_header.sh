#!/bin/bash

OLD_STR=$1
NEW_STR=$2

find . -type f -iname "*.h" -exec sed -i "s/${OLD_STR}/${NEW_STR}/g" {} +
find . -type f -iname "*.cpp" -exec sed -i "s/${OLD_STR}/${NEW_STR}/g" {} +

