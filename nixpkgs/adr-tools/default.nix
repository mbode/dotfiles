{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "adr-tools-${version}";
  version = "3.0.0";

  src = fetchFromGitHub {
    owner = "npryce";
    repo = "adr-tools";
    rev = "${version}";
    sha256 = "1igssl6853wagi5050157bbmr9j12703fqfm8cd7gscqwjghnk14";
  };

  installPhase = ''
    mkdir -p "$out/bin"
    cp src/* "$out/bin"
  '';

  meta = {
    homepage = https://github.com/npryce/adr-tools;
    description = "Command-line tools for working with Architecture Decision Records";
    license = stdenv.lib.licenses.gpl3;
    maintainers = [ stdenv.lib.maintainers.mbode ];
    platforms = stdenv.lib.platforms.unix;
  };
}
