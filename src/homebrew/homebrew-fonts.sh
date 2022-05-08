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

brew tap homebrew/cask-fonts

# brew search font-
brew install –cask font-open-sans           # Open Sans is a humanist sans serif typeface designed by Steve Matteson, Type Director of Ascender Corp.
brew cask install font-firacode-nerd-font   # Free monospaced font with programming ligatures.
brew install --cask font-victor-mono        # A programming font with semi-connected cursive italics and symbol ligatures.