{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    iconTheme.package = lib.mkForce pkgs.papirus-icon-theme;
    iconTheme.name = lib.mkForce "Papirus Dark";
  };
}
