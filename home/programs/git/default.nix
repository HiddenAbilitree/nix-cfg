{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
    userName = "Eric Zhang";
    userEmail = "eric@ericzhang.dev";
    signing = {
      signByDefault = true;
      key = "1DE84ED2BAEED6CC";
    };
  };
}
