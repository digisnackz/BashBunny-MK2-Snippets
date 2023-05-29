#!/bin/bash
# swapping stock sources

sources=("deb http://archive.debian.org/debian/ jessie-backports main"
"deb-src http://archive.debian.org/debian/ jessie-backports main"
"deb http://archive.debian.org/debian jessie main contrib non-free"
"deb-src http://archive.debian.org/debian jessie main contrib non-free"
"deb http://archive.debian.org/debian stretch main"
"deb-src http://archive.debian.org/debian stretch main"
"deb http://archive.debian.org/debian stretch-backports main"
"deb-src http://archive.debian.org/debian stretch-backports main")
for source in "${sources[@]}"; do
    echo "$source" | tee -a /etc/apt/sources.list
done
