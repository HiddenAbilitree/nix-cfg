{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
    userName = "Eric Zhang";
    userEmail = "eric@ericzhang.dev";
    signing = {
      signByDefault = true;
      key = "1FC32AD90C0D6FE3";
    };
  };
}
