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
        click
        coreutils
        dep
        doitlive
        elixir
        exercism
        findutils
        flink
        ffmpeg
        git
        gnugrep
        gnupg
        go
        gopass
        gource
        gradle
        graphviz
        httpie
        hugo
        jq
        jrnl
        kafkacat
        kontemplate
        kubectl
        kubernetes-helm
        maven
        nmap
        nodejs
        nox
        packer
        pandoc
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
