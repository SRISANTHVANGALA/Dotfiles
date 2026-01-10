#!/bin/bash
set -e

echo "==============================="
echo " Arch Linux Full Setup Script "
echo "==============================="

# ---- Check network ----
ping -c 1 archlinux.org >/dev/null || {
  echo "No internet connection."
  exit 1
}

# ---- Sync time ----
sudo timedatectl set-ntp true

# ---- Update system ----
sudo pacman -Syu --noconfirm

# ---- Core packages ----
sudo pacman -S --noconfirm --needed \
  git \
  base-devel \
  networkmanager \
  pipewire pipewire-pulse wireplumber \
  wl-clipboard \
  brightnessctl \
  pavucontrol \
  mpv \
  fastfetch \
  kitty \
  waybar \
  hyprland \
  hyprlock \
  hypridle \
  noto-fonts noto-fonts-emoji \
  ttf-jetbrains-mono-nerd

# ---- Enable services ----
sudo systemctl enable --now NetworkManager
systemctl --user enable --now pipewire pipewire-pulse wireplumber

# ---- Install remaining packages from snapshot ----
if [ -f packages-pacman.txt ]; then
  sudo pacman -S --needed - < packages-pacman.txt
elif [ -f pkglist.txt ]; then
  sudo pacman -S --needed - < pkglist.txt
fi

# ---- Restore dotfiles ----
chmod +x restore.sh
./restore.sh

echo "==============================="
echo " Setup complete "
echo " Log out and log back in "
echo "==============================="
