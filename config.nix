{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        awscli
        bash
        docker-machine
        exercism
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
