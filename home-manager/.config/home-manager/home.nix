{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ks";
  home.homeDirectory = "/home/ks";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
  home.packages = with pkgs; [
    zsh
    zsh-autocomplete
    zsh-syntax-highlighting
    wezterm
    starship
    neovim
    rofi
    nerd-fonts.fira-code
  ];

  # Let Home Manager install and manage itself.
  programs = {
    home-manager.enable = true;
    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      initContent = "${builtins.readFile ./zsh/config.zsh}";
    };
  };
}
