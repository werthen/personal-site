with import <nixpkgs> {};
let
  build-deps = import ./packages.nix;
in pkgs.mkShell {
  nativeBuildInputs = build-deps;
  shellHook = ''
    export LANG=en_US.UTF-8
  '';
}
