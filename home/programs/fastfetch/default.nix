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
        source = "nixos_small";
      };
      display = {
        separator = " : ";
      };
      modules = [
        {
          type = "custom";
          format = "  \u001b[90m  \u001b[31m  \u001b[32m  \u001b[33m  \u001b[34m  \u001b[35m  \u001b[36m  \u001b[37m ";
        }
        {
          type = "custom";
          format = "";
        }
        {
          type = "custom";
          format = "    Happiness describes moments, and it's never permanent ";
        }
        {
          type = "custom";
          format = "";
        }
        {
          type = "os";
          key = "   OS";
          keyColor = "38;5;19";
        }
        {
          type = "kernel";
          key = "   Kernel";
          keyColor = "97";
        }
        {
          type = "packages";
          key = "  󰏗 Packages";
          keyColor = "34";
        }
        {
          type = "display";
          key = "  󱍜 Display";
          keyColor = "38;5;208";
        }
        {
          type = "wm";
          key = "   WM";
          keyColor = "38;5;81";
        }
        {
          type = "terminal";
          key = "   Terminal";
          keyColor = "90";
        }
        {
          type = "media";
          key = "  󰝚  Music";
          keyColor = "34";
        }
        {
          type = "command";
          key = "  󱦟 OS Age ";
          keyColor = "31";
          "text" = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        }
        {
          type = "uptime";
          key = "  ";
          keyColor = "34";
        }
        {
          type = "custom";
          format = "  󰊤  GitHub : Vinayydv3695";
          keyColor = "38;5;75m";
        }
        {
          type = "battery";
          key = "   Battery";
          keyColor = "38;5;228";
        }
        "break"
        {
          type = "title";
          key = "   User";
          keyColor = "38;5;250";
        }
        {
          type = "custom";
          format = "";
        }
        {
          type = "cpu";
          format = "{1}";
          key = "   CPU";
          keyColor = "38;5;118";
        }
        {
          type = "gpu";
          format = "{2}";
          key = "   GPU";
          keyColor = "38;5;220";
        }
        {
          type = "gpu";
          format = "{3}";
          key = "   GPU Driver";
          keyColor = "38;5;27";
        }
        {
          type = "memory";
          key = "   Memory";
          keyColor = "38;5;99";
        }
        {
          type = "custom";
          format = "";
        }
        "break"
        {
          type = "custom";
          format = "  \u001b[90m  \u001b[31m  \u001b[32m  \u001b[33m  \u001b[34m  \u001b[35m  \u001b[36m  \u001b[37m ";
        }
        "break"
      ];
    };
  };
}
