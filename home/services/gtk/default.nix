{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    theme = {
      name = "Tokyonight-Dark-Storm-BL";
      package = pkgs.tokyonight-gtk-theme;
    };
  };
}
