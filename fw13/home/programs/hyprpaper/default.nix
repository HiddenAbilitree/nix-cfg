{ pkgs, config, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "/home/ezhang/nixos-cfg/wallpapers/water.png"
      ];
      wallpaper = [
        ",/home/ezhang/stuff/wallpapers/water.png"
      ];
    };
  };
}
