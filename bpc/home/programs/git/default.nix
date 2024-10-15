{
  config,
  pkgs,
  ...
}:
{
  programs.git.signing = {
    key = "";
    signByDefault = false;
  };
}
