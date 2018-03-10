#!/usr/bin/env sh

if test ! "$(which nix)"; then
  echo "Installing nix..."
  curl https://nixos.org/nix/install | sh
fi
