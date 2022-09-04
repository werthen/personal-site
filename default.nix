{ pkgs ? import <nixpkgs> {}}:
let
  build-deps = import ./packages.nix;
in pkgs.stdenv.mkDerivation rec {
  nativeBuildInputs = build-deps;
  name = "werthen.com";
  src = ./.;
  buildPhase = ''
    nanoc
  '';
  installPhase = ''
    cp -r ./output $out
  '';
}

