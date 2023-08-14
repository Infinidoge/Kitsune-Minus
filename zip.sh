#!/usr/bin/env sh

if [ -e "./Kitsune Minus.zip" ]; then
    rm "./Kitsune Minus.zip"
fi
zip -r "./Kitsune Minus.zip" data/ pack.mcmeta ./*.txt ./*.md
