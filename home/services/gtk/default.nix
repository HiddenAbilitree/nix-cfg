{
  pkgs,
  lib,
  ...
}:
{
  gtk = {
    enable = true;
    theme = {
      name = "Tokyonight-Storm";
      package = pkgs.tokyonight-gtk-theme;
    };
    # iconTheme = {
    #   name = "Tokyonight-Dark";
    #   package = pkgs.tokyonight-icon-theme;
    # };
  };
}
