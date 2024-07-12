#!/bin/sh

echo copying...

cp ~/.wezterm.lua ./.wezterm.lua
rsync -a ~/.config/nvim/ ./nvim

echo fin.

