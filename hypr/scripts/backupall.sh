#!/bin/bash

rm -rf ~/.dotfiles/hypr
rm -rf ~/.dotfiles/kitty
rm -rf ~/.dotfiles/wallpapers
rm -rf ~/.dotfiles/waybar
rm -rf ~/.dotfiles/waypaper
rm -rf ~/.dotfiles/wlogout
rm -rf ~/.dotfiles/swaync

cp -r ~/.config/hypr/ ~/.dotfiles
cp -r ~/.config/kitty/ ~/.dotfiles
cp -r ~/.config/wallpapers/ ~/.dotfiles
cp -r ~/.config/waybar/ ~/.dotfiles
cp -r ~/.config/waypaper/ ~/.dotfiles
cp -r ~/.config/wlogout/ ~/.dotfiles
cp -r ~/.config/swaync/ ~/.dotfiles