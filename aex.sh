#!/bin/sh

echo copying...

cp ~/.wezterm.lua ./.wezterm.lua
cp ~/Library/Application\ Support/lazygit/config.yml ./lazygit/config.yml
rsync -a ~/.config/nvim/ ./nvim

echo fin.

