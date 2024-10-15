{ pkgs, config, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "~/nixos-cfg/wallpapers/1920x1080/mount_fuji.png"
      ];
      wallpaper = [
        ",~/nixos-cfg/wallpapers/1920x1080/mount_fuji.png"
      ];
    };
  };
}
