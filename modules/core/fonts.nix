{
  pkgs,
  lib,
  self,
  inputs,
  ...
}: {
  fonts = {
    packages = with pkgs; [
      # icon fonts
      material-symbols

      # normal fonts
      (google-fonts.override {fonts = ["comfortaa"];})
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji

      # nerdfonts
      (nerdfonts.override {fonts = ["FiraCode" "JetBrainsMono"];})
    ];

    # causes more issues than it solves
    enableDefaultPackages = false;

    # user defined fonts
    # the reason there's Noto Color Emoji everywhere is to override DejaVu's
    # B&W emojis that would sometimes show instead of some Color emojis
    fontconfig.defaultFonts = {
      serif = ["Noto Serif" "Noto Color Emoji"];
      sansSerif = ["Comfortaa" "Noto Color Emoji"];
      monospace = ["FiraCode" "Noto Color Emoji"];
      emoji = ["Noto Color Emoji"];
    };
  };
}
