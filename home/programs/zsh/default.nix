{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    autocd = true;
    initExtra = "fastfetch";
    shellAliases = {
      cfg = "code ~/nixos-cfg/";
      rebuild = "git -C ~/nixos-cfg/ add -A && git -C ~/nixos-cfg/ commit -am update; sudo nixos-rebuild switch --flake ~/nixos-cfg/# && source ~/.zshrc";
      nix-clear = "sudo nix-collect-garbage -d; sudo /run/current-system/bin/switch-to-configuration boot";
      fetch = "fastfetch\nsource /etc/profiles/per-user/$USER/etc/profile.d/hm-session-vars.sh";
      cs367 = "cd ~/School/cs367";
      calq = "qalc";
      calc = "qalc";
      calculator = "qalc";
      calculate = "qalc";
      nix-shell = "nix-shell --command \"zsh\"";
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
