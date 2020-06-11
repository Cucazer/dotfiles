#!/bin/bash

cat .vimrc | tee -a ~/.vimrc

cp -f settings.json "${HOME}/.config/Code - OSS/User/settings.json"

cat config.fish | tee -a ~/.config/fish/config.fish
cat aliases.fish| tee -a ~/.config/fish/aliases.fish
