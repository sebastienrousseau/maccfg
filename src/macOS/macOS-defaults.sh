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

# Adapted from 
# - https://github.com/mathiasbynens/dotfiles/blob/main/.macos
# - https://github.com/joshukraine/mac-bootstrap/blob/master/install/macos-defaults
# - https://github.com/kevinSuttle/macOS-Defaults/blob/master/REFERENCE.md
# - https://github.com/superlumic/superlumic-config/blob/master/kevin.yml


###############################################################################
# System Preferences for macOS                                                #
###############################################################################

# System: Close any open System Preferences panes, to prevent them from overriding
# settings we're about to change
printf "%s\n" "System: Close any open System Preferences panes, to prevent them from overriding settings we're about to change."
osascript -e 'tell application "System Preferences" to quit'

# System: Set computer name (as done via System Preferences → Sharing)
# printf "%s\n" "System: Set computer name (as done via System Preferences → Sharing)."
# sudo scutil --set ComputerName "$COMPUTER_NAME"
# sudo scutil --set HostName "$HOST_NAME"
# sudo scutil --set LocalHostName "$HOST_NAME"
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$HOST_NAME"

# System: Set standby delay to 3 hours (default is 1 hour)
# printf "%s\n" "System: Set standby delay to 3 hours (default is 1 hour).\n"
# sudo pmset -a standbydelay 10800

# System: Disable the sound effects on boot
# printf "%s\n" "System: Disable the sound effects on boot."
# sudo nvram SystemAudioVolume=" "

# System: Disable transparency in the menu bar and elsewhere
# printf "%s\n" "System: Disable transparency in the menu bar and elsewhere."
# defaults write com.apple.universalaccess reduceTransparency -bool true

# System: Set sidebar icon size to medium
printf "%s\n" "System: Set sidebar icon size to medium."
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# System: Remove duplicates in the “Open With” menu (also see `lscleanup` alias)
printf "%s\n" "System: Remove duplicates in the \“Open With\” menu (also see \`lscleanup\` alias)."
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# System: Set scrollbar behavior
# Possible values: `WhenScrolling`, `Automatic`, `Always`
printf "%s\n" "System: Set scrollbar behavior."
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# System: Disable the “Are you sure you want to open this application?” dialog
# printf "%s\n" "System: Disable the \“Are you sure you want to open this application?\” dialog."
# defaults write com.apple.LaunchServices LSQuarantine -bool false

# System: Display ASCII control characters using caret notation in standard text views
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
# printf "%s\n" "System: Display ASCII control characters using caret notation in standard text views."
# defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

# System: Disable Resume system-wide
# printf "%s\n" "System: Disable Resume system-wide."
# defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# System: Disable automatic termination of inactive apps
# printf "%s\n" "System: Disable automatic termination of inactive apps."
# defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# System: Disable the crash reporter
# printf "%s\n" "System: Disable the crash reporter."
# defaults write com.apple.CrashReporter DialogType -string "none"

# System: Disable automatic capitalization as it's annoying when typing code
printf "%s\n" "System: Disable automatic capitalization as it's annoying when typing code."
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# System: Disable smart dashes as they're annoying when typing code
printf "%s\n" "System: Disable smart dashes as they're annoying when typing code."
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# System: Disable automatic period substitution as it's annoying when typing code
printf "%s\n" "System: Disable automatic period substitution as it's annoying when typing code."
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# System: Disable smart quotes as they're annoying when typing code
printf "%s\n" "System: Disable smart quotes as they're annoying when typing code."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# System: Disable auto-correct
printf "%s\n" "System: Disable auto-correct."
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# System: Set Help Viewer windows to non-floating mode
printf "%s\n" "System: Set Help Viewer windows to non-floating mode."
defaults write com.apple.helpviewer DevMode -bool true

# System: Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
printf "%s\n" "System: Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window."
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# System: Restart automatically if the computer freezes
# printf "%s\n" "System: Restart automatically if the computer freezes."
# sudo systemsetup -setrestartfreeze on

# System: Never go into computer sleep mode
# printf "%s\n" "System: Never go into computer sleep mode."
# sudo systemsetup -setcomputersleep Off > /dev/null

# System: Disable Notification Center and remove the menu bar icon
# printf "%s\n" "System: Disable Notification Center and remove the menu bar icon."
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# System: Disable smart quotes as they're annoying when typing code
# printf "%s\n" "System: Disable smart quotes as they're annoying when typing code."
# defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# System: Disable smart dashes as they're annoying when typing code
# printf "%s\n" "System: Disable smart dashes as they're annoying when typing code."
# defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false


###############################################################################
# Activity Monitor                                                            #
###############################################################################

# Show the main window when launching Activity Monitor
# printf "%s\n" ""
# defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
# printf "%s\n" ""
# defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
# printf "%s\n" ""
# defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
# printf "%s\n" ""
# defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
# defaults write com.apple.ActivityMonitor SortDirection -int 0


###############################################################################
# Screenshot Settings                                                         #
###############################################################################

# Screenshot: Disable shadow in screenshots
# printf "%s\n" "Screenshot: Disable shadow in screenshots"
printf "%s\n"  "Disabling shadow for screenshot."
defaults write com.apple.screencapture disable-shadow -bool true

# Screenshot: Save screenshots to the desktop
# printf "%s\n" "Screenshot: Save screenshots to the desktop"
printf "%s\n"  "Changing location of screenshots."
defaults write com.apple.screencapture location "${HOME}"/Pictures/Screenshots

# Screenshot: Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
# printf "%s\n" "Screenshot: Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
printf "%s\n"  "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
defaults write com.apple.screencapture type -string "png"


###############################################################################
# macOS Settings                                                              #
###############################################################################

# macOS: Disabling natural scrolling
printf "%s\n"  "macOS: Disabling natural scrolling."
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# macOS: Hiding internal drives on the desktop
printf "%s\n"  "macOS: Hiding internal drives on the desktop."
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false

# macOS: Hiding removable media on the desktop
printf "%s\n"  "macOS: Hiding removable media on the desktop."
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# macOS: Hiding external drives on the desktop
printf "%s\n"  "macOS: Hiding external drives on the desktop."
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false

# macOS: Hiding mounted servers on the desktop
printf "%s\n"  "macOS: Hiding mounted servers on the desktop."
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false

# macOS: Disabling File extension change warning dialog
printf "%s\n"  "macOS: Disabling File extension change warning dialog."
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# macOS: Avoid creating .DS_Store files on USB drives
printf "%s\n"  "macOS: Avoid creating .DS_Store files on USB drives."
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# macOS: Avoid creating .DS_Store files on Network drives
printf "%s\n"  "macOS: Avoid creating .DS_Store files on Network drives."
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# macOS: Speak selected text when the key is pressed: on
# printf "%s\n" "macOS: Speak selected text when the key is pressed: on."
defaults write com.apple.speech.synthesis.general.prefs SpokenUIUseSpeakingHotKeyFlag -bool true

# macOS: Disable press-and-hold for keys in favor of key repeat
# printf "%s\n" "macOS: Disable press-and-hold for keys in favor of key repeat."
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# macOS: Set a blazingly fast keyboard repeat rate
# printf "%s\n" "macOS: Set a blazingly fast keyboard repeat rate."
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# macOS: Setup mouse/trackpad acceleration
# printf "%s\n" "macOS: Setup mouse/trackpad acceleration."
defaults write -g com.apple.trackpad.scaling 1.5

# macOS: Increase sound quality for Bluetooth headphones/headsets
# printf "%s\n" "macOS: Increase sound quality for Bluetooth headphones/headsets."
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# macOS: Keyboard: Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
# printf "%s\n" "# macOS: Keyboard: Enable full keyboard access for all controls."
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# macOS: Use scroll gesture with the Ctrl (^) modifier key to zoom
# printf "%s\n" "macOS: Use scroll gesture with the Ctrl (^) modifier key to zoom."
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# macOS: Keyboard: Follow the keyboard focus while zoomed in
# printf "%s\n" "macOS: Keyboard: Follow the keyboard focus while zoomed in."
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# macOS: Keyboard: Disable press-and-hold for keys in favor of key repeat
# printf "%s\n" "macOS: Keyboard: Disable press-and-hold for keys in favor of key repeat."
# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false


###############################################################################
# Dock                                                                        #
###############################################################################

# Dock: Automatically hide and show
printf "%s\n" "Dock: Automatically hide and show."
defaults write com.apple.dock autohide -bool true

# Dock: Remove the auto-hiding delay
printf "%s\n" "Dock: Remove the auto-hiding delay."
defaults write com.apple.Dock autohide-delay -float 0

# Dock: Hiding Dashboard as a Space
printf "%s\n" "Dock: Hiding Dashboard as a Space."
defaults write com.apple.dock "dashboard-in-overlay" -bool true

# Dock: Set Icon Size
printf "%s\n"  "Dock: Set Icon Size."
defaults write com.apple.dock tilesize -int 72

# Dock: Automatically rearrange Spaces based on most recent use
printf "%s\n"  "Dock: Automatically rearrange Spaces based on most recent use."
defaults write com.apple.dock mru-spaces -bool false

# Dock: Clear out the dock of default icons
printf "%s\n"  "Dock: Clear out the dock of default icons."
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others

# Dock: Hiding recent applications in Dock
printf "%s\n"  "Dock: Hiding recent applications in Dock."
defaults write com.apple.dock show-recents -bool true

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Dock: Top left screen corner → Disable screen saver
printf "%s\n" "Dock: Top left screen corner → Disable screen saver."
defaults write com.apple.dock wvous-tl-corner -int 6
defaults write com.apple.dock wvous-tl-modifier -int 0

# Dock: Top right screen corner → Desktop
printf "%s\n" "Dock: Top right screen corner → Desktop."
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0

# Dock: Bottom left screen corner → Mission Control
printf "%s\n" "Dock: Bottom left screen corner → Mission Control."
defaults write com.apple.dock wvous-bl-corner -int 2
defaults write com.apple.dock wvous-bl-modifier -int 0

# Dock: Bottom right screen corner → Show application windows
printf "%s\n" "Dock: Bottom right screen corner → Show application windows."
defaults write com.apple.dock wvous-br-corner -int 3
defaults write com.apple.dock wvous-br-modifier -int 0


###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: Show the $HOME/Library folder.
printf "%s\n" "Finder: Show the $HOME/Library folder."
chflags nohidden "$HOME"/Library

# Finder: Hiding desktop icons
printf "%s\n"  "Finder: Hiding desktop icons."
defaults write com.apple.finder CreateDesktop false

# Finder: Use column view in all Finder windows by default
# Four-letter codes for all view modes: `icnv`, `clmv`, `Flwv`, `Nlsv`
printf "%s\n"  "Finder: Use column view in all Finder windows by default."
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Finder: Showing path bar
printf "%s\n"  "Finder: Showing path bar."
defaults write com.apple.finder ShowPathbar -bool true

# Finder: showing status bar
printf "%s\n"  "Finder: showing status bar."
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: Setting sidebar icon size to small
printf "%s\n"  "Finder: Setting sidebar icon size to small."
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Finder: When performing a search, search the current folder by default
printf "%s\n"  "Finder: When performing a search, search the current folder by default."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Finder: Preventing .DS_Store files
printf "%s\n"  "Finder: Preventing .DS_Store files."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder: show hidden files by default
printf "%s\n" "Finder: Show hidden files."
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
printf "%s\n" "Finder: Show filename extensions."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: Disable the warning when changing a file extension
printf "%s\n" "Finder: Disable the warning when changing a file extension."
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: show path bar
printf "%s\n" "Finder: Show path bar."
defaults write com.apple.finder ShowPathbar -bool true

# Finder: show status bar
printf "%s\n" "Finder: Show status bar."
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: display full POSIX path as window title
printf "%s\n" "Finder: Display full POSIX path as window title."
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Finder: 
printf "%s\n" "Finder: Use list view in all Finder windows."
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder: Keep folders on top when sorting by name
printf "%s\n" "Finder: Keep folders on top when sorting by name."
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
printf "%s\n" "Finder: Allow quitting via COMMAND+Q -- Doing so will also hide desktop icons."
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: Disable the warning before emptying the Trash
printf "%s\n" "Finder: Disable the warning before emptying the Trash."
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder: Allow text selection in Quick Look
printf "%s\n" "Finder: Allow text selection in Quick Look."
defaults write com.apple.finder QLEnableTextSelection -bool true

# Finder: Enable spring loading for directories
printf "%s\n" "Finder: Enable spring loading for directories."
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Finder: Remove the spring loading delay for directories
printf "%s\n" "Finder: Remove the spring loading delay for directories."
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Finder: Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
printf "%s\n" "Finder: Expand the following File Info panes (General, Open with and Sharing & Permissions)."
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true


###############################################################################
# Save & Print                                                                #
###############################################################################

# Save & Print: Expanding save and print modals by default
printf "%s\n"  "Save & Print: Expanding save and print modals by default."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true


###############################################################################
# System Preferences                                                          #
###############################################################################

# System Preferences: Requiring password immediately after sleep or screen saver begins.
printf "%s\n"  "System Preferences: Requiring password immediately after sleep or screen saver begins."
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# System Preferences: Disabling keyboard autocorrect.
printf "%s\n"  "System Preferences: Disabling keyboard autocorrect."
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# System Preferences: Disabling Dashboard.
printf "%s\n"  "System Preferences: Disabling Dashboard."
defaults write com.apple.dashboard mcx-disabled -bool true

# System Preferences: Hiding Dashboard as a Space.
printf "%s\n"  "System Preferences: Hiding Dashboard as a Space."
defaults write com.apple.dock dashboard-in-overlay -bool true

# System Preferences: Show battery percentage in menu bar
printf "%s\n"  "System Preferences: Show battery percentage in menu bar."
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write 'com.apple.systemuiserver' 'menuExtras' -array-add '/System/Library/CoreServices/Menu Extras/Battery.menu'

# System Preferences: Enable Clock menu bar item
printf "%s\n"  "System Preferences: Enable Clock menu bar item."
defaults write 'com.apple.systemuiserver' 'NSStatusItem Visible com.apple.menuextra.clock' -bool true
defaults write 'com.apple.systemuiserver' 'menuExtras' -array-add '/System/Library/CoreServices/Menu Extras/Clock.menu'

# System Preferences: Enable Network menu bar item
printf "%s\n"  "System Preferences: Enable Network menu bar item."
defaults write 'com.apple.systemuiserver' 'NSStatusItem Visible com.apple.menuextra.airport' -bool true
defaults write 'com.apple.systemuiserver' 'menuExtras' -array-add '/System/Library/CoreServices/Menu Extras/AirPort.menu'

# System Preferences: Enable Volume menu bar item
printf "%s\n"  "System Preferences: Enable Volume menu bar item."
defaults write 'com.apple.systemuiserver' 'NSStatusItem Visible com.apple.menuextra.volume' -bool true
defaults write 'com.apple.systemuiserver' 'menuExtras' -array-add '/System/Library/CoreServices/Menu Extras/Volume.menu'

# System Preferences: Use a dark menu bar / dock
printf "%s\n"  "System Preferences: Use a dark menu bar / dock."
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# System Preferences: Enabling subpixel font rendering on non-Apple LCDs
printf "%s\n"  "System Preferences: Enabling subpixel font rendering on non-Apple LCDs."
defaults write NSGlobalDomain AppleFontSmoothing -int 1

# System Preferences: Enabling HiDPI display modes (requires restart)
printf "%s\n"  "System Preferences: Enabling HiDPI display modes (requires restart)"
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true


###############################################################################
# Safari                                                                      #
###############################################################################

# Safari: don't send search queries to Apple
printf "%s\n" "Safari: don't send search queries to Apple."
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Safari: Press Tab to highlight each item on a web page
printf "%s\n"  "Safari: Press Tab to highlight each item on a web page."
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

# Safari: Show the full URL in the address bar (note: this still hides the scheme)
printf "%s\n"  "Safari: Show the full URL in the address bar (note: this still hides the scheme)."
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Safari: Set Safari's home page to `about:blank` for faster loading
printf "%s\n"  "Safari: Set Safari's home page to \`about:blank\` for faster loading."
defaults write com.apple.Safari HomePage -string "about:blank"

# Safari: Prevent Safari from opening ‘safe' files automatically after downloading
printf "%s\n"  "Safari: Prevent Safari from opening ‘safe' files automatically after downloading."
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Safari: Allow hitting the Backspace key to go to the previous page in history
printf "%s\n"  "Safari: Allow hitting the Backspace key to go to the previous page in history."
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Safari: Hide Safari's bookmarks bar by default
printf "%s\n"  "Safari: Hiding Safari's bookmarks bar by default."
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Safari: Enabling Safari's debug menu
printf "%s\n"  "Safari: Enabling Safari's debug menu."
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Safari: Disable Safari's thumbnail cache for History and Top Sites
printf "%s\n"  "Safari: Disable Safari's thumbnail cache for History and Top Sites."
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Safari: Make Safari's search banners default to Contains instead of Starts With
# printf "%s\n" "Make Safari's search banners default to Contains instead of Starts With."
# defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Safari: Enable the Develop menu and the Web Inspector in Safari
# printf "%s\n" "Safari: Enable the Develop menu and the Web Inspector in Safari."
# defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Safari: Add a context menu item for showing the Web Inspector in web views
# printf "%s\n" "Safari: Add a context menu item for showing the Web Inspector in web views."
# defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Safari: Enable continuous spellchecking
# printf "%s\n" "Safari: Enable continuous spellchecking."
# defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true

# Safari: Disable auto-correct
# printf "%s\n" "Safari: Disable auto-correct."
# defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

# Safari: Disable AutoFill
# printf "%s\n" "Safari: Disable AutoFill."
# defaults write com.apple.Safari AutoFillFromAddressBook -bool false
# defaults write com.apple.Safari AutoFillPasswords -bool false
# defaults write com.apple.Safari AutoFillCreditCardData -bool false
# defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Safari: Warn about fraudulent websites
# printf "%s\n" "Safari: Warn about fraudulent websites."
# defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Disable plug-ins
# printf "%s\n" "Disable plug-ins."
# defaults write com.apple.Safari WebKitPluginsEnabled -bool false
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool false

# Safari: Disable Java
# printf "%s\n" "Safari: Disable Java."
# defaults write com.apple.Safari WebKitJavaEnabled -bool false
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false

# Safari: Block pop-up windows
# printf "%s\n" "Safari: Block pop-up windows."
# defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

# Safari: Update extensions automatically
# printf "%s\n" "Safari: Update extensions automatically."
# defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

# Safari: Enabling Do Not Track
printf "%s\n" "Safari: Enabling Do Not Track."
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true


###############################################################################
# Terminal                                                                    #
###############################################################################

# Terminal: Disabling the annoying line marks
printf "%s\n"  "# Terminal: Disabling the annoying line marks."
defaults write com.apple.Terminal ShowLineMarks -int 0


###############################################################################
# System                                                                      #
###############################################################################

# System: Reveal IP address, hostname, OS version, etc. when clicking login window clock
printf "%s\n" "System: Reveal IP address, hostname, OS version, etc. when clicking login window clock."
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# System: Disable automatic termination of inactive apps
printf "%s\n" "System: Disable automatic termination of inactive apps."
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# System: Expand save panel by default
printf "%s\n" "System: Expand save panel by default."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# System: Disable 'Are you sure you want to open this application?' dialog
printf "%s\n" "System: Disable 'Are you sure you want to open this application?' dialog."
defaults write com.apple.LaunchServices LSQuarantine -bool false

# System: Increase window resize speed for Cocoa applications
printf "%s\n" "System: Increase window resize speed for Cocoa applications."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# System: Disable window resume system-wide
printf "%s\n" "System: Disable window resume system-wide."
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# System: Disable auto-correct
printf "%s\n" "System: Disable auto-correct."
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# System: Disable smart quotes (not useful when writing code)
printf "%s\n" "System: Disable smart quotes (not useful when writing code)."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# System: Disable smart dashes (not useful when writing code)
printf "%s\n" "System: Disable smart dashes (not useful when writing code)."
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# System: Require password immediately after sleep or screen saver begins
printf "%s\n" "System: Require password immediately after sleep or screen saver begins."
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# System: Avoid creating .DS_Store files on network volumes
printf "%s\n" "System: Avoid creating .DS_Store files on network volumes."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# System: Automatically restart if system freezes
printf "%s\n" "System: Automatically restart if system freezes."
systemsetup -setrestartfreeze on

# System: Disable software updates
# printf "%s\n" "System: Disable software updates."
# sudo softwareupdate --schedule off


###############################################################################
# Keyboard                                                                    #
###############################################################################

# Keyboard: Automatically illuminate built-in MacBook keyboard in low light
printf "%s\n" "Keyboard: Automatically illuminate built-in MacBook keyboard in low light."
defaults write com.apple.BezelServices kDim -bool true

# Keyboard: Turn off keyboard illumination when computer is not used for 5 minutes
printf "%s\n" "Keyboard: Turn off keyboard illumination when computer is not used for 5 minutes."
defaults write com.apple.BezelServices kDimTime -int 300

# Keyboard: Enable keyboard access for all controls
printf "%s\n" "Keyboard: Enable keyboard access for all controls."
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Keyboard: Set a fast keyboard repeat rate
printf "%s\n" "Keyboard: Set a fast keyboard repeat rate."
defaults write NSGlobalDomain KeyRepeat -int 0

# Keyboard: Disable press-and-hold for keys in favor of key repeat
printf "%s\n" "Keyboard: Disable press-and-hold for keys in favor of key repeat."
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false


###############################################################################
# Trackpad                                                                    #
###############################################################################

# Trackpad: Map bottom right corner to right-click
printf "%s\n" "Trackpad: Map bottom right corner to right-click."
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Trackpad: Enable tap to click for current user and the login screen
printf "%s\n" "Trackpad: Enable tap to click for current user and the login screen."
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: Use CONTROL (^) with scroll to zoom
printf "%s\n" "Trackpad: Use CONTROL (^) with scroll to zoom."
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Trackpad: Follow keyboard focus while zoomed in
printf "%s\n" "Trackpad: Follow keyboard focus while zoomed in."
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true






# Save to disk (not to iCloud) by default
printf "%s\n" "iCloud - Save to disk by default."
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false







###############################################################################
# Mail                                                                        #
###############################################################################

# Mail: Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
printf "%s\n" "Mail: Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>'."
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Mail: Disable send animation
printf "%s\n" "Mail: Disable send animation."
defaults write com.apple.mail DisableSendAnimations -bool true

# Disable send and reply animations in Mail.app
printf "%s\n" "Disable send and reply animations in Mail.app."
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Mail: Enable COMMAND+ENTER to send mail
printf "%s\n" "Mail: Enable COMMAND+ENTER to send mail."
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

# Mail: Display emails in threaded mode, sorted by date (oldest at the top)
printf "%s\n" "Mail: Display emails in threaded mode, sorted by date (oldest at the top)."
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"

# Mail: Disable inline attachments (just show the icons)
printf "%s\n" "Mail: Disable inline attachments (just show the icons)."
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Mail: Disable automatic spell checking
printf "%s\n" "Mail: Disable automatic spell checking."
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

# Address Book: Enable the debug menu in Address Book
printf "%s\n" "Address Book: Enable debug menu."
defaults write com.apple.addressbook ABShowDebugMenu -bool true

# iCal: Enable the debug menu in iCal
printf "%s\n" "iCal: Enable the debug menu in iCal."
defaults write com.apple.iCal IncludeDebugMenu -bool true

# TextEdit: Use plain text mode for new documents
printf "%s\n" "TextEdit: Use plain text mode for new documents."
defaults write com.apple.TextEdit RichText -int 0

# TextEdit: Open and save files as UTF-8 encoding
printf "%s\n" "TextEdit: Open and save files as UTF-8 encoding."
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Disk Utility - Enable debug menu
printf "%s\n" "Disk Utility - Enable debug menu."
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

# Game Center: Disabling Game Center
printf "%s\n" "Game Center: Disabling Game Center."
defaults write com.apple.gamed Disabled -bool true


###############################################################################
# Mac App Store                                                               #
###############################################################################

# Disable the automatic update check
# printf "%s\n" ""
# defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool false

# Check for software updates daily, not just once per week
# printf "%s\n" ""
# defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
# printf "%s\n" ""
# defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
# printf "%s\n" ""
# defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Automatically download apps purchased on other Macs
# printf "%s\n" ""
# defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1

# Turn on app auto-update
# printf "%s\n" ""
# defaults write com.apple.commerce AutoUpdate -bool true

# Allow the App Store to reboot machine on macOS updates
# printf "%s\n" ""
# defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

# App Store: Enable Debug Menu in the Mac App Store.
# printf "%s\n" ""
printf "%s\n" "App Store: Enable Debug Menu in the Mac App Store."
defaults write com.apple.appstore ShowDebugMenu -bool true


###############################################################################
# Photos                                                                      #
###############################################################################

# Prevent Photos from opening automatically when devices are plugged in
# printf "%s\n" ""
# defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true


###############################################################################
# Messages                                                                    #
###############################################################################

# Disable automatic emoji substitution (i.e. use plain text smileys)
# printf "%s\n" ""
# defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# Disable smart quotes as it's annoying for messages that contain code
# printf "%s\n" ""
# defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# Disable continuous spell checking
# printf "%s\n" ""
# defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false


###############################################################################
# Google Chrome & Google Chrome Canary                                        #
###############################################################################

# Disable the all too sensitive backswipe on trackpads
# printf "%s\n" ""
# defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
# defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false

# Disable the all too sensitive backswipe on Magic Mouse
# printf "%s\n" ""
# defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
# defaults write com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls -bool false

# Use the system-native print preview dialog
# printf "%s\n" ""
# defaults write com.google.Chrome DisablePrintPreview -bool true
# defaults write com.google.Chrome.canary DisablePrintPreview -bool true


###############################################################################
# Opera & Opera Developer                                                     #
###############################################################################

# Expand the print dialog by default
# printf "%s\n" ""
# defaults write com.operasoftware.Opera PMPrintingExpandedStateForPrint2 -boolean true
# defaults write com.operasoftware.OperaDeveloper PMPrintingExpandedStateForPrint2 -boolean true


###############################################################################
# Extras
###############################################################################

# PowerChime: Activate audible chime when power cable is plugged in.
printf "%s\n" "PowerChime: Activate audible chime when power cable is plugged in"
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true; open /System/Library/CoreServices/PowerChime.app

# Killal: Restart Finder and Dock (though many changes need a restart/relog)
printf "%s\n" "Killal: Restart Finder and Dock (though many changes need a restart/relog)."
killall Finder
killall Dock
