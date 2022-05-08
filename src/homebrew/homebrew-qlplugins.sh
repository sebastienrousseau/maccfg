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

brew update
brew upgrade

brew install apparency              # Preview the contents of a macOS app.
brew install betterzip              # Preview archives.
brew install qlcolorcode            # Preview source code files with syntax highlighting.
brew install qlimagesize            # Preview the size of images in megabytes, along with their resolution in pixels.
brew install qlmarkdown             # Preview Markdown files.
brew install qlprettypatch          # Preview patch files.
brew install qlImageSize            # Display image size and resolution.
brew install qlstephen              # Preview plain text files without or with unknown file extension. Example: README, CHANGELOG, index.styl, etc.
brew install qlvideo                # Preview most types of video files, as well as their thumbnails, cover art and metadata.
brew install quicklook-csv          # Preview CSV, along with some information \(like num rows/columns\).
brew install quicklook-json         # Preview JSON files. It will render files with a colorful view, and will allow to expand or compress nodes in the JSON tree.
brew install quicklookase           # Preview Adobe ASE Color Swatches generated with Adobe Photoshop, Adobe Illustrator, Adobe Color CC, Spectrum, COLOURlovers, Prisma, among many others.
brew install suspicious-package     # Preview the contents of a standard Apple installer package.
brew install webpquicklook          # Preview WebP images.
