#!/bin/sh

echo copying...

cp ./.zshrc ~/.zshrc
cp ./.wezterm.lua ~/.wezterm.lua
cp ./.gitconfig ~/.gitconfig
cp ./lazygit/config.yml ~/Library/Application\ Support/lazygit/config.yml
rsync -a ./nvim ~/.config

echo fin.
