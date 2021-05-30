{ config, lib, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # Use 5.10 kernel.
  boot.kernelPackages = pkgs.linuxPackages_5_10;

  # Use the systemd-boot EFI boot loader.
  boot.loader = {
    systemd-boot.enable = false;
    /* efi = { */
    /*   canTouchEfiVariables = true; */
    /*   efiSysMountPoint = "/boot/efi"; */
    /* }; */
    grub = {
      enable = true;
      version = 2;
      /* device = "nodev"; */
      device = "/dev/sda1";
      /* efiSupport = true; */
      /* useOSProber = true; */
    };
  };

  # Enable networking.
  networking.hostName = "nixos-desktop";
  networking.networkmanager.enable = true;

  # Set your time zone.
  services.localtime.enable = true;

  # Packages installed in system profile.
  environment.systemPackages = with pkgs; [
    git
    latte-dock
    unzip
    vim
    wget
  ];

  # Configure the nix package manager.
  nix = {
    package = pkgs.nixFlakes;
    maxJobs = lib.mkDefault 24;
    autoOptimiseStore = true;
    trustedUsers = [ "root" "brian" "@wheel" ];
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  # Allow unfree packages from nixpkgs.
  nixpkgs.config.allowUnfree = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.sddm = {
    enable = true;
    enableHidpi = true;
  };
  services.xserver.desktopManager.plasma5.enable = true;

  # Enable OpenGL.
  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
    extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
    setLdLibraryPath = true;
  };

  # Enable Docker.
  virtualisation.docker = {
    enable = true;
    enableNvidia = true;
  };

  # Enable gnome-keyring for geary.
  # services.gnome.gnome-keyring.enable = true;
  # security.pam.services.sddm.enableGnomeKeyring = true;

  # Enable flatpaks.
  services.flatpak.enable = true;

  # Define a user account.
  users.users.brian = {
    isNormalUser = true;
    createHome = true;
    uid = 1000;
    extraGroups = [ "wheel" "video" "networkmanager" "vboxusers" "docker" ];
    shell = pkgs.zsh;
  };

  system.stateVersion = "21.05";
}
