#! /bin/sh

HOME=/tmp/

for filename in files/home/*; do
    ln -sf "$PWD/$filename" "$HOME/.${filename##*/}"
done

for i in i3 polybar; do
    mkdir -p "$HOME/.config/$i"
    ln -sf "$PWD/files/$i/config" "$HOME/.config/$i/config"
done

mkdir $HOME/.scripts/
for filename in files/scripts/*; do
    ln -sf "$PWD/$filename" "$HOME/.scripts/${filename##*/}"
done
