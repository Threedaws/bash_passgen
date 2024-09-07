#!/bin/bash
## This is a simple password generator from the /dev/urandom pseudo-device.

## The code can be written as a function in .bashrc as:
## function passgen() {
##    PASS_LEN=${1:-12}
##    PASS_ALPH="\-_\]\[@#\\\\\}\{a-z0-9A-Z"
##    echo "Create a password $PASS_LEN characters long from the alphabet -_][@#\}{a-z0-9A-Z"
##    cat /dev/urandom | tr -cd "${PASS_ALPH}" | head -c $PASS_LEN && echo
##}


PASS_LEN=${1:-12}
PASS_ALPH="\-_\]\[@#\\\\\}\{a-z0-9A-Z"
echo "Create a password $PASS_LEN characters long from the alphabet -_][@#\}{a-z0-9A-Z"
cat /dev/urandom | tr -cd "${PASS_ALPH}" | head -c $PASS_LEN && echo

