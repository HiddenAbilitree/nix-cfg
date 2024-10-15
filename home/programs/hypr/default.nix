{
  config,
  pkgs,
  ...
}:
{
  wayland.windowManager = {
    hyprland = {
      "$menu" = "rofi -show drun";
      "$mod" = "SUPER";
      "$browser" = "firefox";
      "$terminal" = "kitty";
      enable = true;
      extraConfig = builtins.readFile ./hyprland.conf;
    };
  };
}
