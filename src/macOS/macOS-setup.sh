#!/bin/sh
#                       ___  ____     ____             __ _
# _ __ ___   __ _  ___ / _ \/ ___|   / ___|___  _ __  / _(_) __ _
#| '_ ` _ \ / _` |/ __| | | \___ \  | |   / _ \| '_ \| |_| |/ _` |
#| | | | | | (_| | (__| |_| |___) | | |__| (_) | | | |  _| | (_| |
#|_| |_| |_|\__,_|\___|\___/|____/   \____\___/|_| |_|_| |_|\__, |
#                                                           |___/
#
# macOS Config v0.0.3
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
echo "iTerm: Configuring iTerm profiles..."

# Download iTerm profiles file
iTerm_profiles=~/Library/Application\ Support/iTerm2/DynamicProfiles/iTerm.json
curl -sL https://github.com/sebastienrousseau/macos-config/raw/master/media/iTerm.json -o "${iTerm_profiles}"

# Check if download succeeded
if ! curl -sL https://github.com/sebastienrousseau/macos-config/raw/master/media/iTerm.json -o "${iTerm_profiles}"; then
  echo "Error downloading iTerm profiles"
  exit 1
fi

# Reload iTerm profiles
open -a iTerm
osascript -e 'tell application "iTerm2" to reload user profiles'

echo "iTerm profiles configured successfully"
