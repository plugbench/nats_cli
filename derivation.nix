{ stdenv, lib, ... }:

stdenv.mkDerivation rec {
  pname = "nats_cli";
  version = "0.1.0";

  src = ./.;

  meta = with lib; {
    description = "TODO: fill me in";
    homepage = "https://github.com/eraserhd/nats_cli";
    license = licenses.publicDomain;
    platforms = platforms.all;
    maintainers = [ maintainers.eraserhd ];
  };
}
