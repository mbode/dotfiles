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
        kops
        maven
        nox
        pass
        R
        sbt
        thefuck
        tig
        tree
        vim
        watch
        wget
        zsh
      ];
    };
  };
}
