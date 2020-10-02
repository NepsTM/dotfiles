#! /bin/sh

for filename in files/home/*; do
    ln -s "$filename" ".${filename##*/}"
done
