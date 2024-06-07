#!/bin/bash


set -x
set -u

myvar="Hello World"
length=${#myvar} # For printing the length of the variable.
upper=${myvar^^} # For printing the variable in upper case.
replace=${myvar/World/Aadil} # Replace the word
slice=${myvar:6:11}
