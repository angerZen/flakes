{pkgs, ...}: {
  home.packages = with pkgs; [
    pavucontrol

    # utilites
    unzip
    btop
    bleachbit
    eza
    playerctl
    gparted
    pamixer
    xfce.thunar
    neofetch
    zathura
    pcmanfm

    # Multimedia
    mpv
    imv
    cider

    # Nixos
    nix-prefetch-github
    nil
    bettercap

    # monkeytype
    ttyper
    cbonsai
    wofi
    yt-dlp
    youtube-tui
  ];
}
