{
  pkgs,
  config,
  lib,
  ...
}:
{
  programs.fastfetch = {
    enable = true;
    settings = lib.modules.importJSON ./fastfetch.json;
  };
}
