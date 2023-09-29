{
  programs = {
    dconf.enable = true;
    steam.enable = true;
    direnv.enable = true;
    _1password.enable = true;
    _1password-gui = {
      enable = true;
      polkitPolicyOwners = [ "angerzen" ];
    };
    streamdeck-ui = {
      enable = true;
      autoStart = true;
    };
  };
}
