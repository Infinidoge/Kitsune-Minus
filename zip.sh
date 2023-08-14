#!/usr/bin/env bash

VERSION="1.0.0"
DESCRIPTION="Foxy explorers with a touch of Origins Minus' simplicity."

mkdir -p ./build

if [ -d "./out" ]; then
    rm -r ./out
fi
mkdir ./out

cp -r data/ ./pack.* ./*.txt ./*.md fabric.mod.json build
cd build || exit

sed -si "s/@VERSION@/${VERSION}/; s/@DESCRIPTION@/${DESCRIPTION}/" pack.mcmeta fabric.mod.json

zip -r "../out/Kitsune Minus.zip" ./*
jar --create --file "kitsune-minus-${VERSION}.jar" ./*
mv "kitsune-minus-${VERSION}.jar" ../out

cd ..
