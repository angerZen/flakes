{pkgs, ...}: {
  imports = [./home.nix];
  programs.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
  };
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
}
