{
  pkgs,
  config,
  lib,
  ...
}:
{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "~/.config/fastfetch/xero.png";
        type = "kitty";
        height = 15;
        width = 30;
        padding = {
          top = 5;
          left = 3;
        };
      };
      display = {
        separator = " : ";
        brightColor = false;
      };
      #┌

      #├

      #└

      #─
      #┐

      #┘
      modules = [
        "break"
        {
          type = "custom";
          format = "┌──────────────────────Hardware──────────────────────┐";
          keyColor = "";
        }
        {
          type = "host";
          key = " PC";
          keyColor = "green";
        }
        {
          type = "cpu";
          key = "│ ├";
          showPeCoreCount = true;
          keyColor = "green";
        }
        {
          type = "gpu";
          key = "│ ├󰍛";
          keyColor = "green";
        }
        {
          type = "memory";
          key = "│ ├󰍛";
          keyColor = "green";
        }
        {
          type = "disk";
          key = "└ └";
          keyColor = "green";
        }
        {
          type = "custom";
          format = "└────────────────────────────────────────────────────┘";
          keyColor = "";
        }

        {
          type = "custom";
          format = "┌──────────────────────Software──────────────────────┐";
          keyColor = "";
        }
        {
          type = "custom";
          format = "└────────────────────────────────────────────────────┘";
          keyColor = "";
        }

        {
          type = "custom";
          format = "┌──────────────────────Software──────────────────────┐";
          keyColor = "";
        }
        {
          type = "custom";
          format = "└────────────────────────────────────────────────────┘";
          keyColor = "";
        }

      ];
    };
  };
}
