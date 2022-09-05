{ pkgs ? import <nixpkgs> {}}:
let
  build-deps = import ./packages.nix;
in pkgs.stdenv.mkDerivation {
  buildInputs = build-deps;
  name = "werthen.com";
  src = ./.;
  buildPhase = ''
    nanoc
  '';
  installPhase = ''
    mkdir -p $out
    cp -R output/* $out/
  '';
}

