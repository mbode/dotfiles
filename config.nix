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
        kops
        nox
        tree
        vim
        watch
      ];
    };
  };
}
