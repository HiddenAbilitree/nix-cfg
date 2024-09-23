{ pkgs, config, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "/home/ezhang/stuff/wallpapers/water.png"
      ];
      wallpaper = [
        ",/home/ezhang/stuff/wallpapers/water.png"
      ];
    };
  };
}
