{
  inputs,
  nixpkgs,
  self,
  ...
}: {
  nixos = nixpkgs.lib.nixosSystem {
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
      ./warp.nix
      ./../programs/fish
      ./../programs/alacritty
      ./../programs/pywal
      ./../hyprland

      # wayland based programs for hyprland
      ./../programs/wayland/mako
      ./../programs/wayland/swaylock
      ./../programs/wayland/waybar
      ./../programs/wayland/wlogout

      # editors
      ./../programs/editors/vscode
      ./../programs/editors/neovim

      # utility based programs
      ./../programs/utilities/git
      ./../programs/utilities/bat
    ];
  };
}
