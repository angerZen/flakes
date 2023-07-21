{pkgs, ...}: {
  home.packages = [pkgs.libnotify pkgs.mako];
  xdg.configFile."wal/templates/mako.conf".text = ''
    max-visible=1
    sort=-time
    output=""
    layer=top
    font=JetbrainsMono nerd font 12
    background-color={color0}
    text-color={color7}
    padding=20
    border-size=3
    border-radius=0
    border-color={color2}
    progress-color=over {color8}
    icons=1
    max-icon-size=64
    markup=1
    actions=1
    format=%s
    default-timeout=2400
    ignore-timeout=0
    group-by=none
    invisible=0
  '';
}
