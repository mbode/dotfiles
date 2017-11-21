{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        awscli
        git
        gnugrep
        gradle
        jq
        kops
        nox
        sbt
        tree
        vim
        watch
        wget
      ];
    };
  };
}
