{
  pkgs,
  config,
  inputs,
  ...
}:
{

  imports = [
    ./programs
    ./services

  ];

  home = {
    username = "ezhang";
    homeDirectory = "/home/ezhang";
  };
  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.

  home.packages = with pkgs; [

    # related tools
    hyprpaper
    hyprshot

    # themes
    tokyonight-gtk-theme

    # notifications
    swaynotificationcenter

    # cli/tuis
    starship
    bottom
    fastfetch
    fzf
    cbonsai
    gambit-chess
    bluetuith

    # apps
    audacity
    drawing
    easyeffects
    libqalculate
    libreoffice-qt
    mpv
    nautilus
    networkmanagerapplet
    nwg-look
    obsidian
    pavucontrol
    polychromatic
    spotify
    themechanger
    vesktop
    vscode
    zotero

    # games 
    prismlauncher

    # utils
    hunspell
    hunspellDicts.en_US
    hyprls
    xwaylandvideobridge
    thefuck
    man-pages

    # development
    bun
    git
    gh
    inputs.spicetify-nix.homeManagerModules.default

  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  programs.spicetify =
    let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
    in
    {
      enable = true;
      enabledExtensions = with spicePkgs.extensions; [
        adblock
        hidePodcasts
        shuffle # shuffle+ (special characters are sanitized out of extension names)
      ];
      theme = spicePkgs.themes.catppuccin;
      colorScheme = "mocha";
    };

  home.sessionVariables = {
    EDITOR = "nvim";
    SCHOOL = "~/School";
    cse367 = "${config.home.sessionVariables.SCHOOL}/cs367";
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  programs.home-manager.enable = true;
}
