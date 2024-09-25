{
  config,
  pkgs,
  ...
}:
{
  wayland.windowManager = {
    hyprland = {
      enable = true;
      extraConfig = builtins.readFile ./hyprland.conf;
      settings = {
        general = {
          border_size = "0";
          resize_on_border = "true";
          extend_border_grab_area = "50";
          hover_icon_on_border = "true";
        };
        decoration = {
          rounding = "10";
          blur = {
            size = "0";
            passes = "0";
            vibrancy = "0.1696";
          };
        };
        input = {
          accel_profile = "flat";
          natural_scroll = "false";
        };
        #monitor = ",preferred,auto,1";
        "$menu" = "rofi -show drun";
        "$mod" = "SUPER";
        "$browser" = "firefox";
        "$terminal" = "kitty";

        exec-once = "vesktop & spotify & $terminal & bottom & $browser & waybar & hyprpaper & hyprctl setcursor phinger-cursors-dark 24";

        bind =
          [
            "$mod, F, exec, $browser"
            "$mod, Q, exec, $terminal"
            "$mod, SPACE, exec, $menu"
          ]
          ++ (builtins.concatLists (
            builtins.genList (
              i:
              let
                ws = i + 1;
              in
              [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            ) 9
          ));
      };
    };
  };

}
