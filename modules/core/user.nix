{pkgs, ...}: {
  users.users.angerzen = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"];
    shell = pkgs.zsh;
  };
}
