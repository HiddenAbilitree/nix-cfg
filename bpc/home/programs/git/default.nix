{
  config,
  pkgs,
  ...
}:
{
  programs.git.signing = {
    key = "3AA5C34371567BD2";
    signByDefault = true;
  };
}
