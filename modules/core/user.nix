{pkgs, ...}: {
  users.users.angerzen = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager" "onepassword-cli"];
  };
}
