{pkgs, ...}: {
  home-manager.users.angerzen.home.packages = with pkgs; [
    (python311.withPackages (ps:
      with ps; [
        requests
        datetime
      ]))
    qmk
    qmk_hid
  ];
}
