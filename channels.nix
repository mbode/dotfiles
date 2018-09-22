rec {
  stable = nixpkgs-1809-darwin;

  nixpkgs-1803-darwin = import (fetchTarball https://nixos.org/channels/nixpkgs-18.03-darwin/nixexprs.tar.xz) {};

  nixpkgs-1809-darwin = import (fetchTarball https://nixos.org/channels/nixpkgs-18.09-darwin/nixexprs.tar.xz) {};

  unstable = import (fetchTarball https://nixos.org/channels/nixpkgs-unstable/nixexprs.tar.xz) {};
}