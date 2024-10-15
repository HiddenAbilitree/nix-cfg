{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
    userName = "Eric Zhang";
    userEmail = "eric@ericzhang.dev";
  };
}
