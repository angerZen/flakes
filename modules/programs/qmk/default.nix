{
  pkgs,
  inputs,
  ...
}: {
  home-manager.users.angerzen.home.packages = with pkgs; [
    python39
    qmk
    qmk_hid
  ];
}