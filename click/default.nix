{ darwin, fetchFromGitHub, rustPlatform, stdenv }:

with rustPlatform;

buildRustPackage rec {
  rev = "9d3f15f1c72700a3e2782a4bc9b094b693add4d9";
  name = "click-${builtins.substring 0 7 rev}";

  src = fetchFromGitHub {
    owner = "databricks";
    repo = "click";
    sha256 = "1bl6j1gcl86sgnycfzcyxd1cimnsmgqqsnxw60003182i92zdih5";
    inherit rev;
  };

  cargoSha256 = "03vgbkv9xsnx44vivbbhjgxv9drp0yjnimgy6hwm32x74r00k3hj";

  buildInputs = stdenv.lib.optionals stdenv.isDarwin [ darwin.apple_sdk.frameworks.Security ];

  meta = with stdenv.lib; {
    description = "The Command Line Interactive Controller for Kubernetes";
    homepage = https://github.com/databricks/click;
    license = [ licenses.asl20 ];
    maintainers = [ maintainers.mbode ];
    platforms = platforms.all;
  };
}
