# Mac M-Series Software Development Setup Guide

![Mac M-Series][00]

Welcome to the ultimate guide for setting up your Mac M-Series for software
development. Equip your Mac with the best tools and configurations to boost your
coding experience.

## What's Inside?

-   Essential tool installations: Homebrew, Xcode, and more.
-   Terminal & shell configurations.
-   Must-have software and Quick Look plugins.
-   Customizations to enhance your macOS experience and productivity.

Dive in to transform your M-Series Mac into a developer's paradise!

## Table of Contents

- [Mac M-Series Software Development Setup Guide](#mac-m-series-software-development-setup-guide)
  - [What's Inside?](#whats-inside)
  - [Table of Contents](#table-of-contents)
  - [Mac M-Series at a glance](#mac-m-series-at-a-glance)
  - [Repository Contents](#repository-contents)
  - [Setting Up Your Mac](#setting-up-your-mac)
  - [Kickstart Your Development Setup](#kickstart-your-development-setup)
    - [1. Initial Steps](#1-initial-steps)
    - [2. Install macOS Preferences](#2-install-macos-preferences)
    - [3. Add Homebrew to your PATH](#3-add-homebrew-to-your-path)
    - [4. Add Homebrew to your `.zshrc` file](#4-add-homebrew-to-your-zshrc-file)
  - [Enhancing Your Mac with Homebrew Configurations](#enhancing-your-mac-with-homebrew-configurations)
    - [1. **GUI Applications with Homebrew Casks**](#1-gui-applications-with-homebrew-casks)
    - [2. Font Management with Caskroom Fonts](#2-font-management-with-caskroom-fonts)
    - [3. Browse Packages with Homebrew Formulae](#3-browse-packages-with-homebrew-formulae)
    - [4. Enhanced File Preview with Homebrew QLPlugins](#4-enhanced-file-preview-with-homebrew-qlplugins)
  - [Customizing Your macOS Experience](#customizing-your-macos-experience)
    - [1. Setting macOS Defaults](#1-setting-macos-defaults)
    - [2. Discover App Store Treasures](#2-discover-app-store-treasures)
  - [Versioning \& Updates](#versioning--updates)
  - [How to Contribute](#how-to-contribute)
  - [Community \& Values](#community--values)
  - [Licensing](#licensing)
  - [Shoutouts \& Credits](#shoutouts--credits)

## Mac M-Series at a glance

Apple ushered in a new era in late 2020 by transitioning from Intel processors
to its Apple Silicon in Mac computers, introducing the Mac M-Series.

## Repository Contents

Discover the source code, recommended software, tools, and libraries for the
M-Series Development Guide in this repository.

```shell
├── COPYRIGHT
├── LICENSE
├── Makefile
├── README.md
├── Report.txt
├── package.json
└── src
    ├── homebrew
    │   ├── homebrew-casks.sh
    │   ├── homebrew-fonts.sh
    │   ├── homebrew-formulae.sh
    │   └── homebrew-qlplugins.sh
    └── macOS
        ├── macOS-appstore.sh
        ├── macOS-defaults.sh
        ├── macOS-screensavers.sh
        └── macOS-setup.sh

4 directories, 14 files
```

## Setting Up Your Mac

Before diving into the development setup, ensure your Mac is ready.
Follow
[Apple's official documentation](https://support.apple.com/en-gb/guide/macbook-pro/apd831707cb3/mac)
for a smooth setup.

## Kickstart Your Development Setup

Once your Mac is set up, you can begin installing the essential tools for
software development.

### 1. Initial Steps

-   **Open Terminal**: Access through Launchpad or find it in `/Applications/Utilities`.
-   **Install Xcode Command Line Tools**: Run `xcode-select --install` in Terminal.
-   **Install Rosetta 2**: Run `/usr/sbin/softwareupdate --install-rosetta --agree-to-license` in Terminal.

### 2. Install macOS Preferences

-   Open Terminal and run the following command:

``` shell
chmod +x ./src/macOS/macOS-setup.sh && sh ./src/macOS/macOS-setup.sh`
```

The script will install the following software:

-   **Homebrew** - The Missing Package Manager for macOS (or Linux),
-   The **XCode Command Line Tool**,
-   The **‘locate’ Command** - To track down files, file type, app, extension,
    etc.

### 3. Add Homebrew to your PATH

You will need to add Homebrew to your `PATH` environment variable. To do so:

-   Open terminal and run the following command:

``` shell
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[your-user-name]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

then restart your terminal.

### 4. Add Homebrew to your `.zshrc` file

Add Homebrew to your path, edit your `.zshrc` file and add the following at
the bottom.

``` shell
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
```

## Enhancing Your Mac with Homebrew Configurations

Dive deep into the power of Homebrew by extending its capabilities. Here's how
you can utilize Homebrew to its fullest:

### 1. **GUI Applications with Homebrew Casks**

Homebrew Cask elevates Homebrew by simplifying the installation and management
of GUI macOS applications, including popular ones like Atom and Google Chrome.

To get started with Homebrew Casks:

``` shell
chmod +x ./src/homebrew/homebrew-casks.sh && sh ./src/homebrew/homebrew-casks.sh
```

### 2. Font Management with Caskroom Fonts

Harness the power of Caskroom Fonts to manage a vast collection of fonts
directly from your terminal through Homebrew Cask.

Install a curated selection of fonts:

``` shell
chmod +x ./src/homebrew/homebrew-fonts.sh && sh ./src/homebrew/homebrew-fonts.sh
```

Enjoy access to over 1946 freely-distributable fonts. Search, install, or
uninstall them just like any Homebrew Cask application.

### 3. Browse Packages with Homebrew Formulae

Homebrew Formulae serves as an online package browser specifically for Homebrew,
catering to both macOS and Linux.

To utilize Homebrew Formulae:

``` shell
chmod +x ./src/homebrew/homebrew-formulae.sh && sh ./src/homebrew/homebrew-formulae.sh
```

### 4. Enhanced File Preview with Homebrew QLPlugins

Experience Quick Look's capability to swiftly preview almost any file type without the need to open them. Trigger QuickLook plugins with a simple SPACE bar press in Finder.

Check your current plugins with:

``` shell
qlmanage -m plugins
```

Install a handpicked list of Quick Look plugins tailored for developers:

``` shell
chmod +x ./src/homebrew/homebrew-qlplugins.sh && sh ./src/homebrew/homebrew-qlplugins.sh
```

Congratulations, you've now harnessed the complete power of Homebrew!

## Customizing Your macOS Experience

Tailor your Mac settings and preferences to fit your needs. Here's a
step-by-step guide to get your macOS looking and behaving the way you want:

### 1. Setting macOS Defaults

The macOS defaults tool interfaces directly with the macOS preferences system,
allowing many apps to seamlessly manage settings and preferences.

To configure macOS defaults, execute the following in your Terminal:

``` shell
chmod +x ./src/macOS/macOS-defaults.sh && sh ./src/macOS/macOS-defaults.sh
```

### 2. Discover App Store Treasures

Navigate through a curated list of essential App Store software, all accessible
through the Mac App Store's command-line interface.

To start exploring and installing:

``` shell
chmod +x ./src/macOS/macOS-appstore.sh && sh ./src/macOS/macOS-appstore.sh
```

## Versioning & Updates

Adhering to [semantic versioning](http://semver.org/) ensures consistent
updates. Refer to 
[GitHub Releases](https://github.com/sebastienrousseau/maccfg/releases) for the
changelog.

## How to Contribute

Your contributions can make this guide even better! Check our 
[Contributing Guidelines](https://github.com/sebastienrousseau/maccfg/blob/main/.github/CONTRIBUTING.md)
to get started.

## Community & Values

Join a community that values diversity and inclusivity. Familiarize yourself
with our [Code of Conduct](https://github.com/sebastienrousseau/maccfg/blob/main/.github/CODE-OF-CONDUCT.md).

Our beliefs:

-   Perfection encompasses everything.
-   Passion transcends code.
-   Obsession with excellence in solutions.

## Licensing

This project embraces the MIT License. View [LICENSE details](https://github.com/sebastienrousseau/maccfg/blob/main/LICENSE).

## Shoutouts & Credits

[macOS Config](https://maccfg.com) is a masterpiece crafted by [Sebastien Rousseau](https://sebastienrousseau.co.uk) and other incredible [contributors](https://github.com/sebastienrousseau/maccfg/graphs/contributors).

Crafted with ❤ in London.


[00]: https://kura.pro/maccfg/images/banners/maccfg.webp "Maccfg - Mac M-Series Software Development Setup Guide"
