# My Personal Dotfiles

I am switching to Wayland, but still keeping dotfiles for programs such as i3 in my config still.

**Before cloning, `~/.config/nvim/` must be empty/not exist**

## Environment Variables
Append to `/etc/environment`:
```
MOZ_ENABLE_WAYLAND=1
GTK_THEME=Catppuccin-blue:dark
DOTNET_CLI_TELEMETRY_OPTOUT=1
SDL_VIDEODRIVER=wayland
```

## AUR Helper

```
❯ sudo pacman -S rustup git
❯ rustup default nightly
❯ git clone https://aur.archlinux.org/paru.git && cd paru
❯ makepkg -si
```

## Packages

### Desktop
`paru -S hyprland-bin waybar-hyprland-git sddm sddm-sugar-candy-git wlogout wofi dunst papirus-icon-theme catppuccin-gtk-theme-mocha polkit-gnome wlsunset swayidle udev-block-notify brightnessctl swaylock-effects wofi-emoji wofi-calc wofi-wifi-menu-git playerctl grim slurp pipewire wireplumber xdg-desktop-portal-wlr networkmanager lxappearance`

### Applications
`paru -S librewolf thunar kitty wdisplays discord spotify pavucontrol neovide`

### Terminal
`paru -S zsh zsh-theme-powerlevel10k neovim zsh-autosuggestions exa btop zsh-syntax-highlighting`

## Grub bootloader theme
- Install `grub-theme-vimix` from the AUR
- In `/etc/default/grub` uncomment the `GRUB_THEME` line and change it to `GRUB_THEME="/usr/share/grub/themes/Vimix/theme.txt"`
- Regenerate the grub config with `sudo grub-mkconfig -o /boot/grub/grub.cfg`

## AstroNvim
Both [AstroNvim](https://github.com/AstroNvim/AstroNvim) and my [AstroNvim config](https://github.com/AidanMaskelyne/astronvim_config) are added as submodules, and will automatically be cloned into the correct places, provided `~/.config/nvim/` is empty.

Clean neovim folders & make a backup of current config:
```
$ mv ~/.config/nvim ~/.config/nvim.bak
$ mv ~/.local/share/nvim ~/.local/share/nvim.bak
$ mv ~/.local/state/nvim ~/.local/state/nvim.bak
$ mv ~/.cache/nvim ~/.cache/nvim.bak
$ rm -r ~/.config/nvim
```
