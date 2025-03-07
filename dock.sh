#!/bin/bash

defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock scroll-to-open -bool true
killall Dock
