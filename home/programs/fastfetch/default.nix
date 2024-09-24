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
          key = "   ";
          keyColor = "blue";
        }
        {
          type = "kernel";
          key = "   ";
          keyColor = "blue";
        }
        {
          type = "packages";
          key = "   󰏖";
          keyColor = "blue";
        }
        {
          type = "shell";
          key = "   ";
          keyColor = "blue";
        }
        "break"
        {
          type = "lm";
          key = "   ";
          keyColor = "cyan";
        }
        {
          type = "wm";
          key = "   ";
          keyColor = "cyan";
        }
        {
          type = "terminal";
          key = "   ";
          keyColor = "cyan";
        }
        {
          type = "editor";
          key = "   ";
          keyColor = "cyan";
        }

        {
          type = "custom";
          format = "└────────────────────────────────────────────────────┘";
          keyColor = "";
        }

        {
          type = "custom";
          format = "┌────────────────────────Misc.───────────────────────┐";
          keyColor = "";
        }
        {
          type = "command";
          key = "   ";
          keyColor = "blue";
          text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        }
        {
          type = "uptime";
          key = "   󰅒";
          keyColor = "blue";
        }
        {
          type = "theme";
          key = "   󰇀";
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
