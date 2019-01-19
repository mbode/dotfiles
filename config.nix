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
        aws-rotate-key
        ffmpeg
        kontemplate
        nox
        pass
        prometheus-alertmanager
        pythonPackages.yamllint
        sbt
        sshpass
        terraform-landscape
        shellcheck
        thefuck
        tmux
        tree
        vim
        watch
        wget
        yq
        zsh

        unstable.stern

        my-adr-tools
        my-tex
      ];
    };

    my-adr-tools = callPackage ./nixpkgs/adr-tools {};

    my-tex = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman fontawesome moderncv;
    };
  };
}
