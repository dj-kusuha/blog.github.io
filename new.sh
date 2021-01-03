#!/bin/sh

# If a command fails then the deploy stops
set -e

if [ -z "$1" ]; then
    printf "USAGE: ./new.sh <title>"
    exit 1
fi

printf "\033[0;32mCreate new post...\033[0m\n"

file=posts/articles/$(date '+%Y')/$(date '+%m')/$1.md
hugo new $file
