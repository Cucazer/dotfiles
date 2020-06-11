#!/bin/bash

cat .vimrc | tee -a ~/.vimrc

cat settings.json | tee "~/.config/Code - OSS/User/settings.json"

cat config.fish | tee -a ~/.config/fish/config.fish
cat aliases.fish| tee -a ~/.config/fish/aliases.fish
