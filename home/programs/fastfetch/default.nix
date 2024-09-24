{
  pkgs,
  config,
  lib,
  ...
}:
{
  programs.fastfetch = {
    enable = true;
    settings = lib.modules.importJSON ./config.json;
  };
}
