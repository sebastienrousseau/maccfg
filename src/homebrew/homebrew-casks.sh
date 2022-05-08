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

brew tap homebrew/cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# brew list --cask | xargs -L1
brew install --cask alfred              # Application launcher and productivity software.
brew install --cask audio-hijack        # Records audio from any application.
brew install --cask bartender           # Menu bar icon organizer.
brew install --cask bettertouchtool     # Tool to customize input devices and automate computer systems.
brew install --cask carbon-copy-cloner  # Hard disk backup and cloning utility.
brew install --cask charles             # Web debugging Proxy application.
brew install --cask cleanshot           # Screen capturing tool.
brew install --cask colorsnapper        # Color picking application.
brew install --cask dropbox             # Client for the Dropbox cloud storage service.
brew install --cask github              # Desktop client for GitHub repositories.
brew install --cask google-chrome       # Google Chrome Web browser.
brew install --cask google-cloud-sdk    # Set of tools to manage resources and applications hosted on Google Cloud.
brew install --cask imagealpha          # Utility to reduce the size of 24-bit PNG files.
brew install --cask imageoptim          # Tool to optimize images to a smaller size.
brew install --cask istat-menus         # System monitoring app.
brew install --cask iterm2              # Terminal emulator as alternative to Apple\'s Terminal app.
brew install --cask krisp               # Sound clear in online meetings.
brew install --cask little-snitch       # Host-based application firewall.
brew install --cask noun-project        # Icon manager.
brew install --cask pdf-squeezer        # PDF compression tool.
brew install --cask postman             # Collaboration platform for API development.
brew install --cask responsively        # Modified browser that helps in responsive web development.
brew install --cask sketch              # Digital design and prototyping platform.
brew install --cask skype               # Video chat, voice call and instant messaging application.
brew install --cask spamsieve           # Spam filtering extension for e-mail clients.
brew install --cask spotify             # Music streaming service.
brew install --cask stats               # System statistics.
brew install --cask the-unarchiver      # Unpacks archive files.
brew install --cask topnotch            # Utility to hide the notch.
brew install --cask visual-studio-code  # Open-source code editor.
brew install --cask xscope              # Tools for measuring, inspecting and testing on-screen graphics and layouts.
brew install --cask zoom                # Video communication and virtual meeting platform.