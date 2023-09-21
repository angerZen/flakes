{
  inputs,
  nixpkgs,
  self,
  ...
}: {
  ganymede = nixpkgs.lib.nixosSystem {
    specialArgs = {inherit self inputs;};
    system = "x86_64-linux";
    modules = [
      ./../../hosts/nixos/hardware-configuration.nix
      ./bootloader.nix
      ./hardware.nix
      ./home-manager.nix
      ./network.nix
      ./pipewire.nix
      ./programs.nix
      ./security.nix
      ./services.nix
      ./system.nix
      ./user.nix
      ./../desktops/hyprland

      # wayland based programs for hyprland
      ./../programs/wayland/mako
      ./../programs/wayland/swaylock
      ./../programs/wayland/waybar
      ./../programs/wayland/wlogout
      ./../programs/wayland/foot
      ./../programs/wayland/rofi

      # games
      ./../programs/games

      # qmk
      ./../programs/qmk

      # music
      ./../programs/cider

      # editors
      ./../programs/editors/vscode

      # utility based programs
      ./../programs/utilities/git
      ./../programs/utilities/bat
      ./../programs/utilities/neofetch
      ./../programs/utilities/btop

      # theme based programs
      ./../programs/theme/pywal
      ./../programs/theme/gtk
    ];
  };
}
