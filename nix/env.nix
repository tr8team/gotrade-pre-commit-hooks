{ nixpkgs ? import <nixpkgs> { } }:
let pkgs = import ./packages.nix { inherit nixpkgs; }; in
with pkgs;
{
  system = [
    coreutils
    gnugrep
    jq
  ];

  main = [
    pls
  ];

  dev = [
  ];

  lint = [
    sg
    gitlint
    precommit-patch-nix
    pre-commit
    nixpkgs-fmt
    prettier
    shfmt
    shellcheck
  ];

  release = [
    sg
  ];

}
