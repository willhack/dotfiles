#!/bin/sh

echo copying...

cp ~/.zshrc ./.zshrc
cp ~/.wezterm.lua ./.wezterm.lua
cp ~/.gitconfig ./.gitconfig
rsync -a ~/.config/nvim/ ./nvim

echo fin.
