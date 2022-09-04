with import <nixpkgs> {};
let
  build-deps = import ./packages.nix;
in stdenv.mkDerivation rec {
  nativeBuildInputs = build-deps;
  name = "werthen.com";
  src = ./.;
  installPhase = ''
    nanoc
    cp -r ./output $out
  '';
}

