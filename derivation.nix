{ buildGoModule, lib, ... }:

buildGoModule rec {
  pname = "nats_cli";
  version = "0.1.0";

  src = ./.;

  vendorHash = "sha256-AKcz768hJ9GshjB4SDPa2lElM9V8ebz79aXNiGGieVQ=";

  meta = with lib; {
    description = "Helpers for making command-line NATS clients";
    homepage = "https://github.com/eraserhd/nats_cli";
    license = licenses.publicDomain;
    platforms = platforms.all;
    maintainers = [ maintainers.eraserhd ];
  };
}
