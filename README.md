# mynixconfig
Choose aq-ivy or aq-vanessa
```bash
hostname aq-ivy
```
Clone repository
```bash
git clone https://github.com/AlmiriQ/mynixconfig.git ~/.dotfiles && cd ~/.dotfiles
```
Set up for grub
```bash
./setup/grub.sh
```
Copy hardware configuration
```bash
./setup/hardware.sh
```
Start the flake
```bash
nixos-rebuild switch --flake . --impure
```
