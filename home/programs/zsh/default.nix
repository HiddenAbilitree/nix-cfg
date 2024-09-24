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
      cfg = "nvim ~/nixos-cfg/";
      rebuild = "git -C ~/nixos-cfg add ./ & git -C ~/nixos-cfg/ commit -am update & git -C ~/nixos-cfg/ push & sudo nixos-rebuild switch --flake ~/nixos-cfg/# & source ~/.zshrc";
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
