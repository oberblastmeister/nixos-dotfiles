{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    dunst
    polybarFull
    gnome.networkmanagerapplet
    lxappearance

	# viewers
	feh     # background setter and image viewer
	sxiv    # image
	zathura # pdf
	mpv # video
  ];
}
