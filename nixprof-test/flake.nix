{
  outputs = { self, nixpkgs }: let system = "aarch64-darwin"; in {
    packages.${system}.hello = nixpkgs.legacyPackages.${system}.hello;
    defaultPackage.${system} = self.packages.${system}.hello;
  };
}
