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
        awscli
        bash
        coreutils
        dep
        exa
        exercism
        findutils
        flink
        git
        gitAndTools.hub
        gnugrep
        # gnupg installed manually via nix-env -i /nix/store/vgab3j21rqp332hrdsg38iap804772hd-gnupg-2.2.8 (necessary for gopass?)
        go
        gopass
        gource
        gradle
        graphviz
        httpie
        hugo
        jq
        kafkacat
        kontemplate
        kubectl
        kubernetes-helm
        maven
        mysql
        nix-prefetch-git
        nix-repl
        nmap
        nodejs-9_x
        nox
        packer
        pandoc
        pass
        peco
        pipenv
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

        unstable.aws-rotate-key
        unstable.click
        unstable.doitlive
        unstable.heptio-ark
        unstable.prometheus_2

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
