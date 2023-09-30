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

brew update
brew upgrade
brew install --cask betterzipql     # Quick look plugin for archives.
brew install --cask epubquicklook   # Quick look plugin for EPUB files.
brew install --cask qlcolorcode     # Color code for quick look.
brew install --cask qlcommonmark    # Quick look plugin for CommonMark files.
brew install --cask qlimagesize     # Display image size in human readable format.
brew install --cask qlmarkdown      # Quick look plugin for Markdown files.
brew install --cask qlplayground    # Quick look plugin for Swift playgrounds.
brew install --cask qlprettypatch   # Pretty patch for quick look.
brew install --cask qlstephen       # Quick look plugin for HTML files.
brew install --cask qlswift         # Quick look plugin for Swift files.
brew install --cask qlvideo         # Quick look plugin for video files.
brew install --cask quicklook-csv   # Quick look plugin for CSV files.
brew install --cask quicklook-json  # Quick look plugin for JSON files.
brew install --cask quicklook-pat   # Quick look plugin for PAT files.
brew install --cask quicklook-pfm   # Quick look plugin for PFM files.
brew install --cask quicklookase    # Quick look plugin for ASE files.
brew install --cask webpquicklook   # Quick look plugin for WebP files.
