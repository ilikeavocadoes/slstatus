{ stdenv, libXft, libXinerama }:

stdenv.mkDerivation rec {
  name = "slstatus";
  src = ./.;
  buildInputs = [ libXft libXinerama ];
  prePatch = ''sed -i "s:/usr/local:$out:" config.mk'';
}
