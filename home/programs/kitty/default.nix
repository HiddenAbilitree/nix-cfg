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
    themeFile = "tokyo_night_storm";
    settings = {
      background_opacity = "0.75";
      enable_audio_bell = false;
      cursor_shape = "beam";
      window_margin_width = "20";
    };
  };
}
