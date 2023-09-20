{pkgs, ...}: {
  home-manager.users.angerzen = {
    home.packages = [
      pkgs.neofetch
    ];
    xdg.configFile."neofetch".source = ./neofetch;
  };
}
