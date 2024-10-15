{
  config,
  pkgs,
  ...
}:
{
  programs.git.signing = {
    key = "1DE84ED2BAEED6CC";
    signByDefault = true;
  };
}
