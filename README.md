# mynixconfig
Choose aq-ivy or aq-vanessa
```sh
hostname aq-ivy
```
Clone repository
```sh
git clone https://github.com/AlmiriQ/mynixconfig.git ~/.dotfiles && cd ~/.dotfiles
```
Set up for grub
```sh
./setup/grub.sh
```
Start the flake
```sh
nixos-rebuild switch --flake . --impure
```
