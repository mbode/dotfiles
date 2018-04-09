{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        ansible
        antigen
        awscli
        bash
        click
        coreutils
        docker
        docker_compose
        docker-machine
        doitlive
        # exa # https://github.com/ogham/exa/issues/335
        exercism
        findutils
        flink
        git
        gitAndTools.hub
        gnugrep
        gnupg
        go
        gopass
        gradle
        graphviz
        heptio-ark
        httpie
        hugo
        jq
        kontemplate
        kops
        kubectl
        kubernetes-helm
        maven
        # minikube
        nix-prefetch-git
        nix-repl
        nmap
        nodejs-9_x
        nox
        openjdk
        packer
        pandoc
        pass
        peco
        pipenv
        prometheus_2
        pythonPackages.yamllint
        sbt
        terraform
        terraform-landscape
        tex
        shellcheck
        thefuck
        tig
        tmux
        tree
        vim
        watch
        wget
        # youtube-dl
        yq
        zsh
      ];
    };

    # TODO remove once https://github.com/NixOS/nixpkgs/pull/38225 is merged
    click = callPackage ./nixpkgs/click {};

    # TODO remove once https://github.com/NixOS/nixpkgs/pull/38423 is merged
    heptio-ark = callPackage ./nixpkgs/heptio-ark {};

    tex = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman fontawesome moderncv;
    };
  };
}
