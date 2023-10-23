{
  pkgs,
  inputs,
  outputs,
  lib,
  config,
  ...
}: {
  nixpkgs.overlays = [
    (final: prev: {
      _1password-gui = prev._1password-gui.overrideAttrs (oldAttrs: {
        postInstall =
          (oldAttrs.postInstall or "")
          + ''
            substituteInPlace $out/share/applications/1password.desktop \
            --replace "Exec=1password" "Exec=1password --disable-gpu-sandbox"
          '';
      });
    })
  ];

  programs = {
    dconf.enable = true;
    steam.enable = true;
    direnv.enable = true;
    _1password.enable = true;
    _1password-gui = {
      enable = true;
      polkitPolicyOwners = ["angerzen"];
    };
    streamdeck-ui = {
      enable = true;
      autoStart = true;
    };
  };
}
