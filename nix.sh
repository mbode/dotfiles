#!/usr/bin/env sh

if test ! "$(command -v nix)"; then
  echo "Installing nix..."
  curl https://nixos.org/nix/install | sh
  # shellcheck disable=SC1091
  . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
fi
