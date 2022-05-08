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

# Getting the latest Homebrew updates and important security updates.
brewSoftwareUpdates () {
    printf "%s\n" "Getting the latest Homebrew updates and important security updates."
    brew update; 
    brew upgrade; 
    brew cleanup;
}

# Install Homebrew
brewInstall() {
    if command -v brew >/dev/null; then
        brewSoftwareUpdates;
    else
        printf "%s\n" "Getting Homebrew."    
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)";
    fi
}

# Install XCode Command Line Tools
TOOLS="/Library/Developer/CommandLineTools"
installXCodeTools() {
    printf "%s\n" "Getting XCode Command Line Tools."
    if [ ! -d "$TOOLS" ]; then    
        printf "%s\n" "Installing."
        xcode-select --install
    else
        printf "%s\n" "Already up-to-date."
    fi    
}

# Install locate
PLIST=/System/Library/LaunchDaemons/com.apple.locate.plist
installLocate() {
    printf "%s\n" "Getting the ‘locate’ Command."
    if [ ! -f "$PLIST" ]; then
        printf "%s\n" "Enabling."
        sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
    else
        printf "%s\n" "Already up-to-date."
    fi    
}

macOSInstall() {
    brewInstall
    installXCodeTools
    installLocate
}
macOSInstall


# iTerm: Configure iTerm profiles
# printf "%s\n" "iTerm: Config iTerm profiles"
# TODO Fix downloading files from GitHub.
# curl -sSL https://raw.githubusercontent.com/sebastienrousseau/macos-config/master/media/iTerm.json > ~/Library/Application\ Support/iTerm2/DynamicProfiles/iTerm.json
