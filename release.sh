#!/usr/bin/env sh

# Package each variant

# Create output directory
mkdir -p "./release/"

for file in ./variants/rose-pine*.txt ; do
    # Remove path
    variant_name="${file##*/}"

    # Remove extension
    variant_name="${variant_name%.txt}"

    # Package the variant
    # Map ./variants/rose-pine*.txt to ./theme.txt
    tar -czf "./release/${variant_name}.tar.gz" --transform="flags=r;s|${file}|theme.txt|" "${file}" *.md *.pf2 *.png icons/*

done
