{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.kitty = {
    enable = true;
    font = {
      name = "FiraCode";
    };
    theme = "Tokyo Night Storm";
    settings = {
      background_opacity = "0.75";
      enable_audio_bell = false;
    };
  };
}
