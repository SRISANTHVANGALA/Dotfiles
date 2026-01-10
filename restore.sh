#!/bin/bash
set -e

echo "=== Restoring dotfiles ==="

CONFIG_DIR="$HOME/.config"

mkdir -p "$CONFIG_DIR"

for dir in hypr waybar mpv kitty fastfetch; do
  if [ -d "$HOME/Dotfiles/$dir" ]; then
    echo "Restoring $dir..."
    rm -rf "$CONFIG_DIR/$dir"
    cp -r "$HOME/Dotfiles/$dir" "$CONFIG_DIR/"
  fi
done

if [ -f "$HOME/Dotfiles/.bashrc" ]; then
  echo "Restoring .bashrc..."
  cp "$HOME/Dotfiles/.bashrc" "$HOME/.bashrc"
fi

echo "Dotfiles restore complete."
echo "Restart Hyprland or log out to apply changes."
