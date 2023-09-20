{pkgs, ...}: {
  home-manager.users.angerzen = {
    home.packages = with pkgs; [
      yarn
      nodejs
      vite
    ];
    home.sessionPath = [
      "$HOME/.yarn/bin"
    ];
  };
}
