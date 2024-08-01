#!/bin/sh

echo copying...

cp ~/.zshrc ./.zshrc
cp ~/.wezterm.lua ./.wezterm.lua
cp ~/.gitconfig ./.gitconfig
cp ~/Library/Application\ Support/lazygit/config.yml ./lazygit/config.yml
rsync -a ~/.config/nvim/ ./nvim

echo fin.
