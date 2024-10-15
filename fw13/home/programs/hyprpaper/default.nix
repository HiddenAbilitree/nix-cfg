{ pkgs, config, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "~/nixos-cfg/wallpapers/2880x1920/water.png"
      ];
      wallpaper = [
        ",~/nixos-cfg/wallpapers/2880x1920/water.png"
      ];
    };
  };
}
