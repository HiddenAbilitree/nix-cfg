{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
    userName = "Eric Zhang";
    userEmail = "hopeme950@gmail.com";
  };
}
