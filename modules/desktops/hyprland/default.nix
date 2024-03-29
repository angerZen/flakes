{pkgs, ...}: {
  imports = [./home.nix];
  programs.hyprland = {
    enable = true;
  };
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
}
