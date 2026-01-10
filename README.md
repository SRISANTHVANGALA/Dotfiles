# Dotfiles – Arch Linux + Hyprland

Personal dotfiles for an Arch Linux Wayland setup using Hyprland.

## Overview
This repository contains configuration files and scripts to reproduce my
daily-use Linux environment.

## Stack
- Window Manager: Hyprland (Wayland)
- Bar: Waybar
- Terminal: Kitty
- Shell: Bash
- Media Player: mpv (Wayland, VAAPI)
- Fetch Tool: fastfetch

## Features
- Low-resource friendly configuration
- Wayland-first setup
- Clean and minimal UI
- Reproducible install and restore scripts
- Suitable for laptops and low-end hardware

## Installation (Fresh Arch)
```bash
git clone git@github.com:srisanthvangala/Dotfiles.git
cd Dotfiles
chmod +x install.sh
./install.sh
