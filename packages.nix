with import <nixpkgs> {};
let
  gems = bundlerEnv {
    name = "werthen.com";
    inherit ruby;
    gemdir = ./.;
  };
in with pkgs;
  [ pandoc gems (texlive.combine { inherit (texlive) scheme-basic xetex unicode-math enumitem booktabs ulem hyperref xcolor titlesec textpos isodate xltxtra realscripts roboto substr; }) ] ++ (if stdenv.isDarwin then [terminal-notifier] else [])
