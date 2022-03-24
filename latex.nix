{ pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/21.11.tar.gz";
    sha256 = "162dywda2dvfj1248afxc45kcrg83appjd0nmdb541hl7rnncf02";
  }) {}
}:

with pkgs;

let
  packages = rec {
    latex-shell = mkShell rec {
      name = "latex-shell";
      buildInputs = [
        texlive.combined.scheme-full
        rubber
        ninja
        entr
      ];
    };
  };
in packages.latex-shell
