#!/bin/bash

update_file () {
    source=$1
    target=$2
    echo
    echo "$source               >               $target"
    echo
    touch "$target"
    sdiff -o temp.txt "$source" "$target"
    mv temp.txt "$target"
}

update_file .vimrc ~/.vimrc

if [ -d "${HOME}/.config/Code - OSS" ]
then
    update_file settings.json "${HOME}/.config/Code - OSS/User/settings.json"
fi

if [ -d ~/.config/fish ]
then
    update_file config.fish ~/.config/fish/config.fish
    update_file aliases.fish ~/.config/fish/aliases.fish
fi
