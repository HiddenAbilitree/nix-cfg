{ config, pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.kitty}/bin/kitty";
    package = pkgs.rofi-wayland;
    theme = ./theme.rasi;
    extraConfig = {
      kb-mode-next = "Right,Control+Tab";
      kb-mode-previous = "Left,Shift+Control+Tab";
    };
  };
  home.file.".config/rofi/theme.rasi".text = builtins.readFile ./theme.rasi;
  home.file.".config/rofi/colors/tokyo-night.rasi".text = builtins.readFile ./colors/tokyo-night.rasi;
}
