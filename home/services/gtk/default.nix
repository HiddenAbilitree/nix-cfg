{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    gtk.iconTheme.package = lib.mkForce pkgs.papirus-icon-theme;
    gtk.iconTheme.name = lib.mkForce "Papirus Dark";
  };
}
