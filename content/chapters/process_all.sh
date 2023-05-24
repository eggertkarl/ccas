#!/bin/bash

find -name '*.md' | while read f; do
    cp "$f" "$f".old
    ./process.sh < "$f".old > "$f"
done
