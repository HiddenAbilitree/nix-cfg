{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    theme = {

      name = "storm";
      package = pkgs.tokyonight-gtk-theme;
    };
  };
}
