#!/bin/bash

set -e

# Colors for output
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}==> Installing base-devel and git...${NC}"
sudo pacman -Syu --needed --noconfirm base-devel git

echo -e "${GREEN}==> Cloning yay from AUR...${NC}"
cd /tmp
rm -rf yay
git clone https://aur.archlinux.org/yay.git
cd yay

echo -e "${GREEN}==> Building and installing yay...${NC}"
makepkg -si --noconfirm

echo -e "${GREEN}==> yay installed successfully!${NC}"
