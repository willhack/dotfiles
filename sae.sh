#!/bin/sh

echo copying...

cp ./.wezterm.lua ~/.wezterm.lua
cp ./lazygit/config.yml ~/Library/Application\ Support/lazygit/config.yml 
rsync -a ./nvim ~/.config

echo fin.
