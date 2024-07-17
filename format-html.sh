#!/bin/bash

find . -name "*.html" -type f | while read file; do
    if [[ "$file" != *"/feed/"* && "$file" != *"/comments/feed/"* ]]; then
        npx prettier --write "$file"
    fi
done
