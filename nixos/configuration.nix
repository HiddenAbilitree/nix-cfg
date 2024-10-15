# Edit this configuration file to define what should be installed on
# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{

  # Bootloader.
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelPackages = pkgs.linuxPackages_latest;
  };

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Configure keymap in X11

  programs.zsh.enable = true;
  users.users.ezhang = {
    isNormalUser = true;
    description = "Eric Zhang";
    extraGroups = [
      "networkmanager"
      "wheel"
      "openrazer"
    ];
    packages = with pkgs; [ ];
    shell = pkgs.zsh;
  };

  fonts.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [
        "FiraCode"
        "JetBrainsMono"
      ];
    })
  ];

  services.getty.autologinUser = "ezhang";

  # firmware updates
  services.fwupd.enable = true;

  # allow unfree haha
  nixpkgs.config.allowUnfree = true;

  # x-term >:(

  # razer
  hardware.openrazer.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    fprintd

    phinger-cursors

    # utils
    nixfmt-rfc-style
    ripgrep
    fd
    wget
    openrazer-daemon
    wl-clipboard
    playerctl
    brightnessctl
    zip
    unzip
  ];
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryPackage = pkgs.pinentry-tty;
  };
  services.pcscd.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  programs.thunar.enable = true;
  services.fprintd.enable = true;

  time.hardwareClockInLocalTime = true;

  programs.hyprland.enable = true;

  services = {
    displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
      };
    };

    xserver = {
      enable = true;
      displayManager.gdm = {
        enable = true;
        wayland = true;
      };

      excludePackages = [ pkgs.xterm ];

      gnome = {
        enable = true;
        wayland = true;
      };

      desktopManager.gnome.enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    gnome.core-utilities.enable = false;

    desktopManager.gnome.enable = false;

    pipewire = {
      enable = true;
      alsa.enable = true;

      #alsa.support32Bit = true;
      pulse.enable = true;
      # If you want to use JACK applications, uncomment this
      #jack.enable = true;
    };
  };

  # audio
  security.rtkit.enable = true;

  system.stateVersion = "24.05";
}
