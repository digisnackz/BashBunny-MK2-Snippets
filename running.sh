#!/bin/bash
# snippet to install python/openssl dependenccies. Working example of first try. 5/26
# -Eosyne 5/1/23

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
