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

# xargs brew install < brew.txt
brew update
brew upgrade
brew analytics off
brew install automake                           # Tool for generating GNU Standards-compliant Makefiles.
brew install archey4                            # Simple system information tool written in Python.
brew install coreutils                          # GNU File, Shell, and Text utilities.
brew install cmatrix                            # Console Matrix.
brew install commitizen                         # Defines a standard way of committing rules and communicating it
brew install curl                               # Get a file from an HTTP, HTTPS or FTP server.
brew install curlie                             # Power of curl, ease of use of httpie.
brew install duf                                # Disk Usage/Free Utility - a better 'df' alternative.
brew install exa                                # Modern replacement for 'ls'.
brew install fig                                # Fig adds IDE-style autocomplete to your existing terminal. 
brew install figlet                             # Banner-like program prints strings as ASCII art.
brew install findutils                          # Collection of GNU find, xargs, and locate.
brew install jpegoptim                          # Utility to optimize JPEG files.
brew install git                                # Distributed revision control system.
brew install gti                                # ASCII-art displaying typo-corrector for commands.
brew install gh                                 # GitHub command-line tool.
brew install git-crypt                          # Enable transparent encryption/decryption of files in a git repo.
brew install gnu-tar                            # GNU version of the tar archiving utility
brew install gnupg                              # GNU Pretty Good Privacy \(PGP\) package.
brew install go                                 # Open source programming language to build simple/reliable/efficient software.
brew install gpg-suite                          # Tools to protect your emails and files.
brew install gtop                               # System monitoring dashboard for terminal.
brew install htop                               # Improved top \(interactive process viewer\).
brew install httpie                             # User-friendly cURL replacement (command-line HTTP client)
brew install hugo                               # Configurable static site generator.
brew install imagemagick                        # Tools and libraries to manipulate images in many formats.
brew install libyaml                            # YAML Parser.
brew install links                              # Lynx-like WWW browser that supports tables, menus, etc.
brew install mas                                # Mac App Store command-line interface.
brew install n                                  # Node version management.
brew cask install ngrok                         # Reverse proxy, secure introspectable tunnels to localhost.
brew install nvm                                # Manage multiple Node.js versions.
brew install node                               # Platform built on V8 to build network applications.
brew install p7zip                              # 7-Zip \(high compression file archiver\) implementation.
brew install perl                               # Highly capable, feature-rich programming language.
brew install pidof                              # Display the PID number for a given process name.
brew install pinentry-mac                       # Pinentry for GPG on Mac.
brew install pkg-config                         # Manage compile and link flags for libraries.
brew install png2ico                            # PNG to icon converter.
brew install pnpm                               # Fast, disk space efficient package manager.
brew install poetry                             # Python package management tool.
brew install python@3.10                        # Interpreted, interactive, object-oriented programming language.
brew install rbenv                              # Ruby version manager.
brew install readline                           # Library for command-line editing.
brew install ripgrep                            # Search tool like grep and The Silver Searcher.
brew install ruby                               # Powerful, clean, object-oriented scripting language.
brew install shellcheck                         # Static analysis and lint tool, for \(ba\)sh scripts.
brew install speedtest-cli                      # Command-line interface for https://speedtest.net bandwidth tests.
brew install task                               # Feature-rich console based todo list manager.
brew install thefuck                            # Programmatically correct mistyped console commands.
brew install trash                              # CLI tool that moves files or folder to the trash.
brew install tree                               # Display directories as trees \(with optional color/HTML output\).
brew install unrar                              # Command-line unarchiving tools supporting multiple formats.
brew install vim                                # Vi 'workalike' with many additional features.
brew install wget                               # Internet file retriever.
brew install yank                               # Copy terminal output to clipboard.
brew install yarn                               # JavaScript package manager.
brew install youtube-dl                         # Download YouTube videos from the command-line.
brew install xclip                              # Access X11 clipboards from the command-line.
brew install zsh                                # UNIX shell \(command interpreter\).
brew install zsh-autosuggestions                # Fish-like fast/unobtrusive autosuggestions for zsh.
brew install zsh-completions                    # Additional completion definitions for zsh.
brew install zsh-fast-syntax-highlighting       # Feature-rich syntax highlighting for Zsh.