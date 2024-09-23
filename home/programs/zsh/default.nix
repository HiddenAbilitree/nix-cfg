{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      fuck = "thefuck";
      cfg = "nvim /home/ezhang/nixos-cfg/";
      rebuild = "sudo nixos-rebuild switch --flake '/home/ezhang/nixos-cfg#'";
      nix-clear = "sudo nix-collect-garbage -d; sudo /run/current-system/bin/switch-to-configuration boot";
      fetch = "fastfetch";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "thefuck"
      ];
    };
  };
}
