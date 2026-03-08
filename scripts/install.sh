#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CONFIG_DIR="$DOTFILES_DIR/config"

mkdir -p "$HOME/.config"

echo "Installing dotfiles..."

ln -sf "$CONFIG_DIR/hypr" "$HOME/.config/hypr"
ln -sf "$CONFIG_DIR/kitty" "$HOME/.config/kitty"
ln -sf "$CONFIG_DIR/waybar" "$HOME/.config/waybar"
ln -sf "$CONFIG_DIR/rofi" "$HOME/.config/rofi"
ln -sf "$CONFIG_DIR/mpv" "$HOME/.config/mpv"
ln -sf "$CONFIG_DIR/cava" "$HOME/.config/cava"
ln -sf "$CONFIG_DIR/fastfetch" "$HOME/.config/fastfetch"
ln -sf "$CONFIG_DIR/htop" "$HOME/.config/htop"

echo "Dotfiles installed successfully."
