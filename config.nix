{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        awscli
        exercism
        git
        gnugrep
        gradle
        jq
        kops
        maven
        nox
        sbt
        thefuck
        tree
        vim
        watch
        wget
        zsh
      ];
    };
  };
}
