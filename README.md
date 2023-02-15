# dotfiles

Hey, here is my shell configuration ;)


**INSTALL**

you need to install fzf at first, or some function will not work as expect.

oh my god zsh, lovely tmux, neovim, favorite XMonad !

``` bash
sudo apt install fzf # for debian
sudo emerge -av fzf # for gentoo
sudo pacman -S fzf # for archlinux
```

``` bash
bash install.sh
```

To use alaritty terminal, we need to configure fcitx5 input method.
```
zsh
####
#  fcitx
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"
export INPUT_METHOD="fcitx"
export XIM="fcitx"
export XIM_PROGRAM="fcitx"
export SDL_IM_MODULE="fcitx"
export GLFW_IM_MODULE="fcitx"
###

pacman -S fcitx5 fcitx5-mozc fcitx5-rime
pacman -S fcitx5-qt fcitx5-gtk fcitx5-configtool

fcitx5-configtool # activate all IME, and set auto active.
# use F4 to change rime IME to use simple chinese.
# use this to set mozc to use 9 as page size.
/usr/lib/mozc/mozc_tool --mode=config_dialog
# v ~/.local/share/fcitx5/rime/default.custom.yaml
patch:
  "menu/page_size": 9
```

```
xmodmap -e 'clear Lock' -e 'keycode x042=Escape'
activate IME, swith tty may cause these not work.
```
