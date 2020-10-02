#!/bin/sh

tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert "$tmpbg" -spread 20 -implode 1 "$tmpbg"
i3lock -e -i "$tmpbg"
rm "$tmpbg"
