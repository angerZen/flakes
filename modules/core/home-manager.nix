{inputs, ...}: {
  imports = [inputs.home-manager.nixosModules.home-manager];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {inherit inputs;};
    users.angerzen = {
      imports = [(import ./../home)];
      home = {
        username = "angerzen";
        homeDirectory = "/home/angerzen";
        stateVersion = "22.11";
      };
      programs.home-manager.enable = true;
    };
  };
}
