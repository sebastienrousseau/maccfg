#!/bin/sh
#                       ___  ____     ____             __ _
# _ __ ___   __ _  ___ / _ \/ ___|   / ___|___  _ __  / _(_) __ _
#| '_ ` _ \ / _` |/ __| | | \___ \  | |   / _ \| '_ \| |_| |/ _` |
#| | | | | | (_| | (__| |_| |___) | | |__| (_) | | | |  _| | (_| |
#|_| |_| |_|\__,_|\___|\___/|____/   \____\___/|_| |_|_| |_|\__, |
#                                                           |___/
#
# macOS Config v0.0.2
# https://maccfg.com
#
# Copyright (c) Sebastien Rousseau 2022. All rights reserved
# Licensed under the MIT license
#

# Install mas - Mac App Store command-line interface
masInstall() {
    if command -v mas >/dev/null; then
        printf "%s\n" "Already up-to-date."
    else
        printf "%s\n" "Getting mas-cli - a simple command line interface for the Mac App Store."    
        brew install mas
    fi
}
masInstall

# Amazon Prime Video - Originals, movies, TV, sports.
printf "%s\n" "Getting Amazon Prime Video - Originals, movies, TV, sports."
mas install 545519333

# Amphetamine - Powerful keep-awake utility.
printf "%s\n" "Getting Amphetamine - Powerful keep-awake utility."
mas install 937984704

# Fantastical Calendar.
printf "%s\n" "Getting Fantastical Calendar."
mas install 975937182

# JSON Peep for Safari.
printf "%s\n" "Getting JSON Peep for Safari."
mas install 1458969831

# Kindle - Interface for reading and syncing eBooks.
printf "%s\n" "Getting Kindle - Interface for reading and syncing eBooks."
mas install 405399194

# Simple HTTP Server - Simple zero-configuration command-line HTTP server.
printf "%s\n" "Getting Simple HTTP Server - Simple zero-configuration command-line HTTP server."
mas install 441002840

# Xcode - Developer Tools
printf "%s\n" "Getting Xcode - Developer Tools."
mas install 497799835

# WhatsApp Desktop - Desktop client for WhatsApp.
printf "%s\n" "Getting WhatsApp Desktop - Desktop client for WhatsApp."
mas install 1147396723

# Byword - Markdown app for writing in plain text efficiently. 
printf "%s\n" "Getting Byword - Markdown app for writing in plain text efficiently."
mas install 420212497

# Keynote - Build stunning presentations.
printf "%s\n" "Getting Keynote - Build stunning presentations."
mas install 409183694

# Numbers - Create impressive spreadsheets.
printf "%s\n" "Getting Numbers - Create impressive spreadsheets."
mas install 409203825

# Pages - Documents that stand apart.
printf "%s\n" "Pages - Documents that stand apart."
mas install 409201541
