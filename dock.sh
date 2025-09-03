#!/bin/bash

defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock scroll-to-open -bool true
defaults write com.apple.dock springboard-page-duration -float .3
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
defaults write -g com.apple.springing.delay -float 0.1666666865348816
killall Dock
killall -HUP Finder
