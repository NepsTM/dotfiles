#!/bin/sh

tmpbg='/tmp/screen.png'

# Needs scrot
scrot "$tmpbg"

[[ $? -neq 0 ]] && exit 1

# Needs imagemagick package
convert "$tmpbg" -spread 20 -implode 1 "$tmpbg"

[[ $? -neq 0 ]] && exit 2

i3lock -e -i "$tmpbg"
rm "$tmpbg"
