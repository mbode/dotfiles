let

channels = import ./channels.nix;
pkgs = channels.stable;

in
{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; with channels; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        ffmpeg
        kontemplate
        nox
        prometheus-alertmanager
        zsh

        my-tex
      ];
    };

    my-tex = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman fontawesome moderncv;
    };
  };
}
