with import ./nixpkgs.nix;

mkShell {
  buildInputs = [ (callPackage ./default.nix {}) ];
}
