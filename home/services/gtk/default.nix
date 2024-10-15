{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    theme = {

      name = "Storm-BL";
      package = pkgs.tokyonight-gtk-theme;
    };
  };
}
