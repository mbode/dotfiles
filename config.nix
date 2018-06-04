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
        dep
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
        #gnupg  # manually installed via `nix-env -i /nix/store/a09pfk5slyb7x2h5ichy6p19h40wx34a-gnupg-2.2.4`
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
        my-adr-tools
        #my-terraform_0_11_5
        mysql
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
        prometheus-alertmanager
        pythonPackages.yamllint
        sbt
        sshpass
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

    # TODO remove once https://github.com/NixOS/nixpkgs/pull/39014 is merged
    my-adr-tools = callPackage ./nixpkgs/adr-tools {};

    inherit (callPackage ./nixpkgs/terraform {})
      my-terraform_0_11_5
      my-terraform_0_11_7
      ;

    tex = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman fontawesome moderncv;
    };
  };
}
