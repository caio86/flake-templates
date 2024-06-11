{
  description = "My flake for templates";

  outputs = { self }: {
    templates = {
      default = self.templates.devShells;

      devShells = {
        path = ./devShells;
        description = "dev environment with nix flakes";
      };

      nixos = {
        path = ./nixosModule;
        description = "nixos flake template";
      };

      home-manager = {
        path = ./home-managerModule;
        description = "home-manager flake template";
      };

      nixosWithHome = {
        path = ./nixosWithHomeManager;
        description = "flake with nixos and home-manager configuration modules";
      };

      impermanence = {
        path = ./impermanence;
        description = "example configuration for an impermanent setup";
      };
    };
  };
}
