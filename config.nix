{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        awscli
        bash
        docker
        docker_compose
        docker-machine
        exercism
        flink
        git
        gitAndTools.hub
        gnugrep
        gnupg
        go
        gradle
        graphviz
        jq
        kontemplate
        kops
        kubernetes-helm
        maven
        nox
        packer
        pass
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
