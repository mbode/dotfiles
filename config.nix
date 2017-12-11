{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        awscli
        bash
        exercism
        git
        gitAndTools.hub
        gnugrep
        gnupg
        go
        gradle
        jq
        kontemplate
        kops
        maven
        nox
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
