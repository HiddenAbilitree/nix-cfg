{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    theme.package = pkgs.tokyonight-gtk-theme;
  };
}
