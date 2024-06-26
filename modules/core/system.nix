{
  self,
  inputs,
  ...
}: {
  nixpkgs = {
    overlays = let
      myOverlay = self: super: {
        discord = super.discord.override {
          withVencord = true;
        };
      };
    in [
      self.overlays.default
      myOverlay
      inputs.nur.overlay
    ];
  };
  systemd.network.wait-online.enable = false;
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = ["nix-command" "flakes"];
    };
  };

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  time.timeZone = "America/Chicago";
  time.hardwareClockInLocalTime = false;
  i18n.defaultLocale = "en_US.UTF-8";

  services.displayManager.autoLogin = {
    enable = true;
    user = "angerzen";
  };

  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;
  system.stateVersion = "23.05";
}
