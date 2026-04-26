let
  sources = import ./npins;
  pkgs = import sources.nixpkgs { };
in
pkgs.mkShell {
  packages = [
    pkgs.npins
    pkgs.packwiz
  ];

  NIX_PATH = "nixpkgs=${sources.nixpkgs.outPath}";
}
