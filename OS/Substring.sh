#!/usr/bin/env bash

echo "Enter Stirng:"
read str

# Static
# echo "${str:2:3}"

# Dynamic
echo "Starying Point:"
read start
echo "End Point:"
read end
echo "${str:start:end}"

