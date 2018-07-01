rec {
  stable = nixos-1803-darwin;

  nixos-1803-darwin = import (fetchTarball https://nixos.org/channels/nixpkgs-18.03-darwin/nixexprs.tar.xz) {};

  unstable = import (fetchTarball https://nixos.org/channels/nixpkgs-unstable/nixexprs.tar.xz) {};
}