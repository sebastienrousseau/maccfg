#!/bin/sh
#                       ___  ____     ____             __ _
# _ __ ___   __ _  ___ / _ \/ ___|   / ___|___  _ __  / _(_) __ _
#| '_ ` _ \ / _` |/ __| | | \___ \  | |   / _ \| '_ \| |_| |/ _` |
#| | | | | | (_| | (__| |_| |___) | | |__| (_) | | | |  _| | (_| |
#|_| |_| |_|\__,_|\___|\___/|____/   \____\___/|_| |_|_| |_|\__, |
#                                                           |___/
#
# macOS Config v0.0.1
# https://maccfg.com
#
# Copyright (c) Sebastien Rousseau 2022. All rights reserved
# Licensed under the MIT license
#

# Mac ScreenSaver https://github.com/agarrharr/awesome-macos-ScreenSavers

# todo: Check when below ScreenSavers are available for Big Sur

printf "%s\n" "Getting Awesome macOS ScreenSavers."

# Flip clock ScreenSavers
printf "%s\n" "Installing the Flip clock ScreenSavers."
brew install --cask fliqlo  
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Fliqlo path /Users/"$USER"/Library/Screen\ Savers/Fliqlo.saver type 0

# Epoch Flip Clock ScreenSavers
printf "%s\n" "Installing the Epoch Flip Clock ScreenSavers."
brew install --cask epoch-flip-clock
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Epoch\ Flip\ Clock path /Users/"$USER"/Library/Screen\ Savers/Epoch\ Flip\ Clock.saver type 0

# Grid Clock ScreenSavers
printf "%s\n" "Installing the Grid Clock ScreenSavers."
brew install --cask grid-clock
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Grid\ Clock path /Users/"$USER"/Library/Screen\ Savers/Grid\ Clock.saver type 0

# Aerial ScreenSavers
printf "%s\n" "Installing the Aerial ScreenSavers."
brew install --cask aerial
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Aerial path /Users/"$USER"/Library/Screen\ Savers/Aerial.saver type 0

# Brooklyn ScreenSavers
printf "%s\n" "Installing the Brooklyn ScreenSavers."
brew install --cask brooklyn
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Brooklyn path /Users/"$USER"/Library/Screen\ Savers/Brooklyn.saver type 0
