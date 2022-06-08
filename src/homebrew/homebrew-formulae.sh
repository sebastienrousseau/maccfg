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

# xargs brew install < brew.txt
brew update
brew upgrade
brew analytics off
brew install aom                                # Google's open source video codec
brew install archey4                            # A simple and fast terminal progress bar
brew install autoconf                           # GNU Autoconf
brew install automake                           # GNU Automake
brew install bdw-gc                             # Boehm-Demers-Weiser Garbage Collector
brew install berkeley-db                        # Berkeley DB
brew install brotli                             # Brotli compression
brew install c-ares                             # C-Ares is a C library for asynchronous DNS requests
brew install ca-certificates                    # A CA certificate bundle
brew install cairo                              # A 2D graphics library with cross-device support
brew install cf2                                # CF2 is a command line tool for managing Cloudflare DNS records
brew install cmatrix                            # A matrix-based animation framework
brew install commitizen                         # Git commit message checker
brew install coreutils                          # GNU Core Utilities
brew install curl                               # curl is a tool for transferring data with URL syntax
brew install curlie                             # Curl is a tool for transferring data with URL syntax
brew install docbook                            # DocBook is a document format for technical documentation
brew install docbook-xsl                        # DocBook XSL stylesheets
brew install duf                                # duf is a command line utility for displaying the differences between files
brew install erlang                             # Erlang is a programming language used for distributed systems
brew install exa                                # exa is a modern replacement for ls
brew install figlet                             # figlet is a utility for printing ASCII art
brew install findutils                          # GNU find, locate, and more
brew install fontconfig                         # Fontconfig is a library for configuring fonts
brew install freetype                           # FreeType is a freely available software library for handling fonts
brew install fribidi                            # Fribidi is a Unicode bidirectional text algorithm
brew install gdbm                               # GNU gdbm is a GNU database library
brew install gdk-pixbuf                         # GdkPixbuf is a library for image loading and pixel manipulation
brew install gettext                            # GNU gettext is a tool for internationalization
brew install gh                                 # gh is a GitHub API client
brew install ghostscript                        # Ghostscript is a PostScript to PDF converter
brew install giflib                             # GIFlib is a library for reading and writing GIF images
brew install git                                # Git is a free and open source distributed version control system
brew install git-crypt                          # Git-crypt is a utility for encrypting and decrypting files in a Git repository
brew install glib                               # GLib is a C library for the programmer's convenience
brew install gmp                                # GNU Multiple Precision Arithmetic Library
brew install gnu-getopt                         # GNU getopt is a library for processing command line arguments
brew install gnu-tar                            # GNU tar is a utility for manipulating tar archives
brew install gnupg                              # GnuPG is a complete and free implementation of the OpenPGP standard
brew install gnutls                             # GnuTLS is a secure communications library
brew install go                                 # Go is a programming language that makes it easy to build simple, reliable, and efficient software
brew install gobject-introspection              # GObject Introspection is a library for introspecting GObjects
brew install graphite2                          # Graphite2 is a library for writing scalable graphics
brew install gti                                # GTI is a tool for generating GTK+ themes
brew install gtop                               # GTop is a terminal user interface for the top command
brew install guile                              # Guile is a general purpose interpreted language
brew install harfbuzz                           # HarfBuzz is a font library for Unicode and OpenType    
brew install htop                               # htop is a terminal process viewer
brew install httpie                             # httpie is a command line HTTP client
brew install hugo                               # Configurable static site generator.    
brew install icu4c                              # ICU is a C and C++ library and toolkit for Unicode and globalization.
brew install imagemagick                        # ImageMagick is a software suite to create, edit, compose, or convert bitmap images.
brew install imath                              # iMath is a math library for C and C++
brew install jasper                             # Jasper is a library for manipulating JPEG images    
brew install jbig2dec                           # jbig2dec is a library for handling JPEG-2000 images
brew install jpeg                               # JPEG is a lossless, portable, and common image format
brew install jpeg-xl                            # JPEG XL is a lossless, portable, and common image format
brew install jpegoptim                          # jpegoptim is a JPEG image optimizer
brew install libassuan                          # libassuan is a C library for the Assuan protocol
brew install libde265                           # libde265 is a library for decoding H.265 video
brew install libevent                           # libevent is a library that provides asynchronous event notification
brew install libffi                             # libffi is a library for calling functions implemented in other languages
brew install libgcrypt                          # libgcrypt is a cryptographic library
brew install libgpg-error                       # libgpg-error is a library for error reporting of the GNU PGP library
brew install libheif                            # libheif is a library for HEIF image format
brew install libice                             # libice is a library for the X11 ICE protocol
brew install libidn                             # libidn is a library for international domain names
brew install libidn2                            # libidn2 is a library for international domain names
brew install libksba                            # libksba is a library for handling X.509 certificates
brew install liblqr                             # liblqr is a library for linear-quadratic-regression
brew install libnghttp2                         # libnghttp2 is a HTTP/2.0 client library
brew install libomp                             # libomp is a library for OpenMP
brew install libpng                             # libpng is a library for reading and writing PNG images
brew install libpthread-stubs                   # libpthread-stubs is a library for stubbing out pthread functions
brew install libraw                             # libraw is a library for reading RAW files
brew install librsvg                            # librsvg is a library for SVG files
brew install libsm                              # libsm is a library for the X11 SM protocol
brew install libssh2                            # libssh2 is a C library implementing the SSH2 protocol
brew install libtasn1                           # libtasn1 is a library for processing ASN.1 data
brew install libtiff                            # libtiff is a library for reading and writing TIFF files
brew install libtool                            # libtool is a generic library support system
brew install libunistring                       # libunistring is a C library for manipulating Unicode strings
brew install libusb                             # libusb is a library for USB access
brew install libuv                              # libuv is a library for node.js
brew install libvmaf                            # libvmaf is a library for video content analysis
brew install libx11                             # libX11 is a library for the X Window System
brew install libxau                             # libXau is a library for the X11 protocol    
brew install libxcb                             # libXCB is a library for the X11 protocol
brew install libxdmcp                           # libxdmcp is a library for the X11 protocol
brew install libxext                            # libxext is a library for the X11 protocol
brew install libxmu                             # libxmu is a library for the X11 protocol
brew install libxrender                         # libxrender is a library for the X11 protocol
brew install libxt                              # libxt is a library for the X11 protocol
brew install libyaml                            # libyaml is a YAML parser and emitter    
brew install links                              # Links is a text browser
brew install little-cms2                        # Little CMS2 is a color management system
brew install lua                                # Lua is a powerful, efficient, lightweight, embeddable scripting language
brew install lzo                                # LZO is a data compression library
brew install m4                                 # M4 is a macro processor
brew install markdownlint-cli                   # markdownlint-cli is a linter for Markdown files
brew install mas                                # mas is a Mac App Store command-line interface
brew install mpdecimal                          # mpdecimal is a library for arbitrary-precision floating-point arithmetic
brew install n                                  # n is a text editor
brew install ncurses                            # ncurses is a terminal-based curses library    
brew install nettle                             # nettle is a cryptographic library
brew install node                               # Node.js is a JavaScript runtime environment for executing JavaScript code server-side
brew install npth                               # npth is a library for using GNU Pth threads
brew install openexr                            # OpenEXR is a high-performance, high-quality, floating-point, lossless, and fully HDR image format
brew install openjdk                            # OpenJDK is a Java runtime environment
brew install openjpeg                           # OpenJPEG is a library for JPEG-2000 decoding and encoding
brew install openldap                           # OpenLDAP is a directory service
brew install openssl@1.1                        # OpenSSL is a toolkit for secure communications and data exchange
brew install openssl@3                          # OpenSSL is a toolkit for secure communications and data exchange
brew install p11-kit                            # p11-kit is a library for accessing PKCS#11 tokens    
brew install p7zip                              # p7zip is a file compression utility
brew install pango                              # Pango is a library for laying out and rendering text
brew install pcre                               # PCRE is a library for regular expressions
brew install pcre2                              # PCRE2 is a library for regular expressions
brew install perl                               # Perl is a highly capable, feature-rich programming language
brew install pidof                              # pidof is a tool for listing processes
brew install pinentry                           # pinentry is a tool for interacting with PKCS#11 tokens
brew install pinentry-mac                       # pinentry-mac is a tool for interacting with PKCS#11 tokens
brew install pixman                             # pixman is a library for pixel manipulation
brew install pkg-config                         # pkg-config is a helper tool for locating packages in development trees
brew install png2ico                            # png2ico is a utility for converting PNG images to ICO        
brew install pnpm                               # pnpm is a package manager for Node.js
brew install poetry                             # poetry is a package manager for Python
brew install python@3.10                        # Python is a programming language that is easy to learn
brew install rbenv                              # rbenv is a Ruby environment manager
brew install readline                           # readline is a library for command-line editing
brew install ripgrep                            # ripgrep is a tool for searching archives
brew install rtmpdump                           # rtmpdump is a tool for downloading RTMP streams
brew install ruby                               # Ruby is a dynamic, reflective, object-oriented, interpreted, and extensible programming language
brew install ruby-build                         # ruby-build is a tool for building Ruby
brew install shared-mime-info                   # shared-mime-info is a library for MIME type utilities    
brew install shellcheck                         # shellcheck is a linter for shell scripts
brew install six                                # six is a Python 2/3 compatibility library
brew install speedtest-cli                      # speedtest-cli is a command line interface for testing internet bandwidth
brew install sqlite                             # sqlite is a library for the SQL database engine
brew install task                               # task is a command line todo list manager
brew install thefuck                            # thefuck is a CLI for the shell
brew install trash                              # trash is a utility for deleting files and folders
brew install tree                               # tree is a directory listing utility
brew install unbound                            # unbound is a validating resolver for DNS
brew install unrar                              # Command-line unarchiving tools supporting multiple formats.
brew install vim                                # Vim is a highly configurable, featureful, and user-friendly text editor
brew install webp                               # webp is a library for encoding and decoding WebP images
brew install wget                               # wget is a command line file downloader
brew install wxwidgets                          # wxWidgets is a C++ GUI library for wxWidgets
brew install x265                               # x265 is a high-performance H.265 video encoder
brew install xclip                              # xclip is a command line utility for copying and pasting text
brew install xmlto                              # xmlto is a command line XML to ODT converter
brew install xorgproto                          # xorgproto is a collection of X.Org headers
brew install xz                                 # xz is a general-purpose data compression utility with high compression ratio
brew install yank                               # yank is a command line utility for copying text to the clipboard
brew install yarn                               # yarn is a JavaScript package manager
brew install youtube-dl                         # youtube-dl is a command line program to download YouTube videos
brew install zsh                                # zsh is a shell that conforms to the POSIX shell syntax
brew install zsh-autosuggestions                # zsh-autosuggestions is a zsh plugin for suggesting completions
brew install zsh-completions                    # zsh-completions is a zsh plugin for tab completion
brew install zsh-fast-syntax-highlighting       # zsh-fast-syntax-highlighting is a zsh plugin for syntax highlighting    
brew install zstd                               # zstd is a command line utility for compressing and decompressing files