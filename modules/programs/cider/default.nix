{
  pkgs,
  inputs,
  ...
}: {

  home-manager.users.angerzen.home.packages = with pkgs; [
    cider
  ];
}