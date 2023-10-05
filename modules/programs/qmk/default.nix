{pkgs, ...}: {
  home-manager.users.angerzen.home.packages = with pkgs; [
    qmk
    qmk_hid
  ];
}
