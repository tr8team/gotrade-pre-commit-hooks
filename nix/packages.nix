{ nixpkgs ? import <nixpkgs> { } }:
let
  pkgs = rec {
    atomi_classic = (
      with import (fetchTarball "https://github.com/kirinnee/test-nix-repo/archive/refs/tags/v8.1.0.tar.gz");
      {
        inherit sg;
      }
    );
    atomi = (
      with import (fetchTarball "https://github.com/kirinnee/test-nix-repo/archive/refs/tags/v15.2.0.tar.gz");
      {
        inherit pls precommit-patch-nix;
      }
    );
    "Unstable 11th Dec 2022" = (
      with import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/84575b0bd882be979516f4fecfe4d7c8de8f6a92.tar.gz") { };
      {
        inherit
          coreutils
          gnugrep

          pre-commit
          jq

          gitlint
          nixpkgs-fmt
          shfmt
          nodejs
          shellcheck;
        npm = nodePackages.npm;

        prettier = nodePackages.prettier;
      }
    );
  };
in
with pkgs;
atomi_classic //
atomi //
pkgs."Unstable 11th Dec 2022"
