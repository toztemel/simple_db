#!/bin/bash

db_set() {
    echo "$1, $2" >> database
}
# read latest value
db_get() {
    grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}
