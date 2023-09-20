{pkgs, ...}: {
  home-manager.users.angerzen = {
    programs.git = {
      enable = true;
      userName = "angerZen";
      userEmail = "social@angerzen.com";
    };

    home.packages = with pkgs; [
      gh
    ];
  };
}
