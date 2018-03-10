#!/usr/bin/env sh

if test ! "$(command -v nix)"; then
  echo "Installing nix..."
  curl https://nixos.org/nix/install | sh
fi
