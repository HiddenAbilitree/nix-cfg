{
  description = "A flake for managing my secrets";
  inputs.sops-nix.url = "github:Mic92/sops-nix";
  imports = [
    sops-nix.homeManagerModules.sops
  ];
  outputs =
    {
      self,
      pkgs,
      sops-nix,
    }:
    let
      gh-wrapped = pkgs.writeShellScriptBin "gh" ''
        export GITHUB_TOKEN="$(cat ${config.sops.secrets.github-token.path})"
        ${pkgs.gh}/bin/gh $@
      '';
    in
    {
      environment.systemPackages = [
        gh-wrapped
      ];
    };
}
