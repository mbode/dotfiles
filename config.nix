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
        httpie
        hugo
        jq
        kontemplate
        kops
        # kubernetes-helm
        maven
        # minikube
        nix-prefetch-git
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
        R
        sbt
        terraform
        terraform-landscape
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
  };
}
