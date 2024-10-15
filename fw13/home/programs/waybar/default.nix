{ pkgs, config, ... }:
{
  programs.waybar = {
    extraConfig = builtins.readFile ./waybar.conf;
  };
}
