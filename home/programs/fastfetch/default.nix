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
          key = "   ";
          keyColor = "cyan";
        }

        {
          type = "cpu";
          key = "   ";
          showPeCoreCount = true;
          keyColor = "cyan";
        }
        {
          type = "memory";
          key = "   ";
          keyColor = "cyan";
        }
        {
          type = "disk";
          key = "   ";
          keyColor = "cyan";
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
          type = "os";
          key = " OS";
          keyColor = "yellow";
        }
        {
          type = "kernel";
          key = "│ ├";
          keyColor = "yellow";
        }
        {
          type = "packages";
          key = "│ ├󰏖";
          keyColor = "yellow";
        }
        {
          type = "shell";
          key = "└ └";
          keyColor = "yellow";
        }
        "break"
        {
          type = "de";
          key = " DE";
          keyColor = "blue";
        }
        {
          type = "lm";
          key = "│ ├";
          keyColor = "blue";
        }
        {
          type = "wm";
          key = "│ ├";
          keyColor = "blue";
        }
        {
          type = "wmtheme";
          key = "│ ├󰉼";
          keyColor = "blue";
        }
        {
          type = "gpu";
          key = "└ └󰍛";
          format = "{3}";
          keyColor = "blue";
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
