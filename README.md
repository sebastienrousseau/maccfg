# MacBook Pro M1 Software Development Setup (macOS Config)

![MacBook Pro M1](https://raw.githubusercontent.com/sebastienrousseau/maccfg/main/assets/mbp834x275.svg)

## Welcome

A guide to getting your MacBook Pro M1 ready for Software Development. You can
set up and start using your new Mac in no time at all with these free resources
and user guides.

## Table of Contents

-   [MacBook Pro M1 Software Development Setup (macOS Config)](#macbook-pro-m1-software-development-setup-macos-config)
    -   [Welcome](#welcome)
    -   [Table of Contents](#table-of-contents)
    -   [MacBook Pro M1 at a glance](#macbook-pro-m1-at-a-glance)
    -   [In this repository](#in-this-repository)
    -   [Set up your Mac](#set-up-your-mac)
    -   [Get Started](#get-started)
        -   [Open Terminal](#open-terminal)
        -   [Install Rosetta 2 on your Mac](#install-rosetta-2-on-your-mac)
        -   [Install Homebrew](#install-homebrew)
            -   [macOS Setup](#macos-setup)
            -   [Add Homebrew to your PATH](#add-homebrew-to-your-path)
            -   [Add Homebrew to your `.zshrc` file](#add-homebrew-to-your-zshrc-file)
            -   [Homebrew Casks](#homebrew-casks)
            -   [Homebrew Fonts](#homebrew-fonts)
            -   [Homebrew Formulae](#homebrew-formulae)
            -   [Homebrew QLPlugins](#homebrew-qlplugins)
        -   [Install macOS Preferences](#install-macos-preferences)
            -   [macOS defaults](#macos-defaults)
            -   [macOS Screensavers](#macos-screensavers)
            -   [App Store Softwares](#app-store-softwares)
    -   [Semantic Versioning Policy](#semantic-versioning-policy)
    -   [Changelog](#changelog)
    -   [Contributing](#contributing)
    -   [Rules](#rules)
    -   [Our Values](#our-values)
    -   [License](#license)
    -   [Acknowledgements](#acknowledgements)

## MacBook Pro M1 at a glance

Starting with certain models introduced in late 2020, Apple began the transition
from Intel processors to Apple silicon in Mac computers.

Mac computers with Apple silicon:

-   Mac Studio (2022)
-   MacBook Pro (14-inch, 2021)
-   MacBook Pro (16-inch, 2021)
-   iMac (24-inch, M1, 2021)
-   Mac mini (M1, 2020)
-   MacBook Air (M1, 2020)
-   MacBook Pro (13-inch, M1, 2020)
  
## In this repository

Within this release you'll find the following files and folders setup:

```shell
.
├── CODEOWNERS
├── COPYRIGHT
├── LICENSE
├── README.md
├── assets
│   ├── mbp834x275.svg
│   └── rosetta-480x233.svg
├── package.json
└── src
    ├── homebrew
    │   ├── hombrew-fonts.sh
    │   ├── homebrew-casks.sh
    │   ├── homebrew-formulae.sh
    │   └── homebrew-qlplugins.sh
    └── macOS
        ├── macOS-appstore.sh
        ├── macOS-defaults.sh
        ├── macOS-screensavers.sh
        └── macOS-setup.sh

4 directories, 15 files
```

## Set up your Mac

-   [Set up your Mac](https://support.apple.com/en-gb/guide/macbook-pro/apd831707cb3/mac)
with Apple MacBook Pro Essentials documentation.

## Get Started

This repository contains the source code of multiple customized macOS
Configurations files.

Check out our selection of commercial and open source software, tools and
libraries that are available for use.

You’ll find new ways to enhance your software development and productivity.

### Open Terminal

On your Mac, do one of the following:

-   Click the Launchpad icon  in the Dock, type Terminal in the search field, then
click Terminal.
-   In the Finder, open the `/Applications/Utilities` folder, then double-click
Terminal.

### Install Rosetta 2 on your Mac

Rosetta 2 enables a Mac with Apple silicon to use apps built for a Mac with an
Intel processor.

Install Rosetta2 using the Terminal:

``` shell
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

![Rosetta 2](https://raw.githubusercontent.com/sebastienrousseau/maccfg/master/assets/rosetta-480x233.svg)

### Install Homebrew

Homebrew supports the MacBook Pro M1 chip (Apple silicon) beginning with the release of
Homebrew 3.0.0 in February 2021.

The script installs Homebrew to its preferred prefix `/opt/homebrew` for Apple
Silicon, which is not part of the default shell $PATH. You'll need to configure
your shell environment so Homebrew packages are found and take priority over
pre-installed tools.

#### macOS Setup

Open your Terminal and run the commands below, and input your computer’s password
when prompted:

``` shell
chmod +x ./macOS/macOS-setup.sh && sh ./macOS/macOS-setup.sh
```

The script will install the following softwares:

-   **Homebrew** - The Missing Package Manager for macOS (or Linux),
-   The **XCode Command Line Tool**,
-   The **‘locate’ Command** - To track down files, file type, app, extension, etc.

#### Add Homebrew to your PATH

You will need to add Homebrew to your `PATH`.

``` shell
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[your-user-name]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

then restart your terminal.

#### Add Homebrew to your `.zshrc` file

Add Homebrew to your path, edit your `.zshrc` file and add the following at
the bottom.

``` shell
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
```

#### Homebrew Casks

Homebrew Cask extends Homebrew and brings its elegance, simplicity, and speed to the installation and management of GUI macOS applications such as Atom and Google Chrome.

Open your Terminal and run the commands below:

``` shell
chmod +x ./homebrew/homebrew-casks.sh && sh ./homebrew/homebrew-casks.sh
```

#### Homebrew Fonts

Caskroom Fonts lets you manage fonts from the command line through Homebrew Cask.

Open your Terminal and run the commands below to install a few selected fonts:

``` shell
chmod +x ./homebrew/homebrew-fonts.sh && sh ./homebrew/homebrew-fonts.sh
```

You now have quick access to 1946 (at the time of writing) freely-distributable
fonts. You can search, install, and uninstall them the same way you would any
application through Homebrew Cask.

#### Homebrew Formulae

Homebrew Formulae is an online package browser for Homebrew – the macOS (and Linux) package manager.

Open your Terminal and run the commands below:

``` shell
chmod +x ./homebrew/homebrew-formulae.sh && sh ./homebrew/homebrew-formulae.sh
```

#### Homebrew QLPlugins

Quick Look offers a fast, full-size preview of nearly any kind of file without opening the file. QuickLook plugins are invoked when we hit the SPACE bar in Finder to get a quick preview of the file, without opening it.

You can list your current plugins with the command `qlmanage -m plugins`.

Simply open Terminal on your computer and type the command listed below to install our curated list of Quick Look plugins for developers.

``` shell
chmod +x ./homebrew/homebrew-qlplugins.sh && sh ./homebrew/homebrew-qlplugins.sh
```

That’s it you’re done with Homebrew!

### Install macOS Preferences

#### macOS defaults

The macOS defaults tool works directly with the macOS preferences subsystem and is used by many apps in macOS to manage preferences and other settings.

Open your Terminal and run the commands below:

``` shell
chmod +x ./macOS/macOS-defaults.sh && sh ./macOS/macOS-defaults.sh
```

#### macOS Screensavers

Explore our curated list of screensavers for macOS from
[Awesome macOS Screensavers](https://github.com/agarrharr/awesome-macos-ScreenSavers).

Open your Terminal and run the commands below:

``` shell
chmod +x ./macOS/macOS-screensavers.sh; 
sh ./macOS/macOS-screensavers.sh;
```

#### App Store Softwares

Explore our curated list of App Store softwares using the Mac App Store command-line interface.

Open your Terminal and run the commands below:

``` shell
chmod +x ./macOS/macOS-appstore.sh;
sh ./macOS/macOS-appstore.sh;
```

## Semantic Versioning Policy

For transparency into our release cycle and in striving to maintain backward compatibility, `maccfg` follows [semantic versioning](http://semver.org/) and [ESLint's Semantic Versioning Policy](https://github.com/eslint/eslint#semantic-versioning-policy).

## Changelog

-   [GitHub Releases](https://github.com/sebastienrousseau/maccfg/releases)

## Contributing

Please read carefully through our [Contributing Guidelines](https://github.com/sebastienrousseau/maccfg/blob/master/.github/CONTRIBUTING.md) for further details on the process for submitting pull requests to us.

## Rules

We are committed to preserving and fostering a diverse, welcoming community. Please read our [Code of Conduct](https://github.com/sebastienrousseau/maccfg/blob/master/.github/CODE-OF-CONDUCT.md).

## Our Values

-   We believe perfection must consider everything.
-   We take our passion beyond code into our daily practices.
-   We are just obsessed about creating and delivering exceptional solutions.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/sebastienrousseau/maccfg/blob/master/LICENSE) file for details

## Acknowledgements

[macOS Config](https://maccfg.com) is beautifully crafted by these people and a bunch of awesome [contributors](https://github.com/sebastienrousseau/maccfg/graphs/contributors)

| Contributors |
|---------|
|[![Sebastien Rousseau](https://avatars0.githubusercontent.com/u/1394998?s=117)](https://sebastienrousseau.co.uk)|
|[Sebastien Rousseau](https://github.com/sebastienrousseau)|

Made with ❤ in London.
