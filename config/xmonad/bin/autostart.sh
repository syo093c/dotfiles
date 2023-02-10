#!/bin/bash

#--- utils ---
# cursor
xsetroot -cursor_name left_ptr

# caps lock to esc for vim
xmodmap -e 'clear Lock' -e 'keycode x042=Escape'

#set keyboard repeat rate
xset r rate 250 90
#--------------------
# trackpad nature scroll direction
xinput set-prop 'bcm5974'  'libinput Natural Scrolling Enabled' 1 
# trackpad scroll speed
xinput set-prop 'bcm5974'  "libinput Scrolling Pixel Distance" 20
# trackpad pointer accelarate
xinput set-prop 'bcm5974'  295 0.6
# tap to click
xinput set-prop 'bcm5974' 'libinput Tapping Enabled' 1 

#--- picom ---
#killall -9 picom
picom --config $HOME/.config/xmonad/picom.conf &

#--- polybar ---
#killall -9 polybar
#polybar &

#--- lofi ---
#killall -9 rofi
#rofi &

#mute
pactl set-sink-volume "alsa_output.pci-0000_02_00.3.Speakers" 0% 

#macbook
# brightness 
brightnessctl -d acpi_video0 set 50

# nigtron wallpaper
killall -9 nitrogen
nitrogen --restore &


# ibus @IMPORTANT@ please put this at last, or xinput will conflict.
ibus-daemon --xim --replace