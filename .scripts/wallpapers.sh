#!/bin/sh

( [ -d $HOME/afs/Pictures ] || [ -d $HOME/Pictures ] ) && feh --bg-scale "$( shuf -e -n 1 $HOME/Pictures/*.jpg )"
