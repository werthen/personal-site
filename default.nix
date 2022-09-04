with import <nixpkgs> {};
let
  build-deps = import ./packages.nix;
in stdenv.mkDerivation rec {
  buildInputs = build-deps;
  name = "werthen.com";
  src = ./.;
  installPhase = ''
    nanoc
    cp -r ./output $out
  '';
}

