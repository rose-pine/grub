#!/usr/bin/env sh

# Build the variants from the template

npx @rose-pine/build@latest -t ./theme.txt -o ./variants/ -f hex
