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
        gnugrep
        go
        gradle
        jq
        kops
        maven
        nox
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
