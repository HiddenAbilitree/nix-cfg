{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    autocd = true;
    #initExtra = builtins.readFile ./.zshrc;
    shellAliases = {
      fuck = "thefuck";
      cfg = "nvim /home/ezhang/nixos-cfg/";
      rebuild = "git -C ~/nixos-cfg commit -am update & git -C ~/nixos-cfg push & sudo nixos-rebuild switch --flake ~/nixos-cfg/#";
      nix-clear = "sudo nix-collect-garbage -d; sudo /run/current-system/bin/switch-to-configuration boot";
      fetch = "fastfe2tch";
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
