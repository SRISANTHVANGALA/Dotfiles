#!/bin/bash
set -e

echo "=== Installing packages from pkglist ==="

sudo pacman -S --needed - < packages-pacman.txt

if [ -s foreign-pkgs.txt ]; then
  echo
  echo "Foreign/AUR packages detected:"
  cat foreign-pkgs.txt
  echo "Install these manually using yay/paru."
fi
