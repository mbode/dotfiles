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
        exa
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
        kafkacat
        kontemplate
        kops
        kubectl
        kubernetes-helm
        maven
        # minikube
        my-adr-tools
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

    my-adr-tools = callPackage ./nixpkgs/adr-tools {};

    tex = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman fontawesome moderncv;
    };
  };
}
