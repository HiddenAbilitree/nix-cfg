{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    theme = {

      name = "storm-bl";
      package = pkgs.tokyonight-gtk-theme;
    };
  };
}
