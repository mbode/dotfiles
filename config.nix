{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        awscli
        bash
        coreutils
        docker
        docker_compose
        docker-machine
        # exa # https://github.com/ogham/exa/issues/335
        exercism
        findutils
        flink
        git
        gitAndTools.hub
        gnugrep
        gnupg
        go
        gradle
        graphviz
        hugo
        jq
        kontemplate
        kops
        kubernetes-helm
        maven
        nodejs-9_x
        nox
        packer
        pass
        peco
        R
        sbt
        terraform_0_10
        thefuck
        tig
        tree
        vim
        watch
        wget
        python36Packages.yamllint
        zsh
      ];
    };
  };
}
