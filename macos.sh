#! /bin/bash -eu

defaults write com.apple.finder CreateDesktop false
defaults write com.apple.Terminal FocusFollowsMouse -bool true
defaults write  -g FocusFollowsMouse -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool TRUE
defaults write com.apple.desktopservices DSDontWriteStores -bool TRUE
defaults write -g ApplePressAndHoldEnabled -bool flase
defaults write com.apple.finder AppleShowAllFiles TRUE
defaults write com.apple.dock autohide-delay -float 2147483640
defaults write com.apple.dock no-bouncing -bool TRUE
#---
sudo pmset -a powernap 0
sudo pmset -a tcpkeepalive 0
sudo pmset -a ttyskeepawake 0
sudo pmset -a womp 0
sudo pmset repeat cancel
sudo pmset schedule cancelall

# rectangle
# autoraise
# flameshot
# copyq
