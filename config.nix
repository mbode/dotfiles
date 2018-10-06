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
        ansible
        antigen
        aws-rotate-key
        awscli
        bash
        click
        coreutils
        dep
        doitlive
        exa
        exercism
        findutils
        flink
        ffmpeg
        git
        gitAndTools.hub
        gnugrep
        gnupg
        go
        gopass
        gource
        gradle
        graphviz
        heptio-ark
        httpie
        hugo
        jq
        jrnl
        kafkacat
        kontemplate
        kubectl
        kubernetes-helm
        maven
        mysql
        nix-prefetch-git
        nmap
        nodejs
        nox
        packer
        pandoc
        pass
        peco
        pipenv
        prometheus_2
        prometheus-alertmanager
        pythonPackages.yamllint
        sbt
        sshpass
        terraform-landscape
        shellcheck
        thefuck
        tig
        tmux
        tree
        vim
        watch
        wget
        yq
        zsh

        unstable.kops

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
