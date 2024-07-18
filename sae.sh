#!/bin/sh

echo copying...

cp ./.wezterm.lua ~/.wezterm.lua
rsync -a ./nvim ~/.config

echo fin.
