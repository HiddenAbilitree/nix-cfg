{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    theme = {
      name = "Dark-Storm-BL";
      package = pkgs.tokyonight-gtk-theme;
    };
  };
}
