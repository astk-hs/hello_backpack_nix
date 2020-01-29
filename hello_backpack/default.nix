with import <nixpkgs> { config.allowUnfree = true; };

haskell.packages.ghc881.override {
  overrides = self: super: {
    helloStr      = self.callCabal2nix "helloStr" ./helloStr {};
    worldStr      = self.callCabal2nix "worldStr" ./worldStr {};
    hello         = self.callCabal2nix "hello" ./hello {};
    helloBackpack = self.callCabal2nix "helloBackpack" ./helloBackpack {};
    helloUse      = self.callCabal2nix "helloUse" ./helloUse{};
  };
}