#!/bin/bash -eu

if [ "$(uname)" != "Darwin" ] ; then
	echo "Invalid OS!"
	exit 1
fi


echo " 🏝 ln -sf ./zshrc ~/.zshrc"
ln -sf `pwd`/zshrc ~/.zshrc

echo " 🏝 ln -sf ./aliases ~/.aliases"
ln -sf `pwd`/aliases ~/.aliases

echo " 🏝 ln -sf ./vimrc ~/.vimrc"
ln -sf `pwd`/vimrc ~/.vimrc

echo " 🏝 ln -sf ./config/ ~/.config"
cp -r `pwd`/config/ ~/.config

echo " 🏝 ln -sf ./ssh/ ~/.ssh"
cp -r `pwd`/ssh/ ~/.ssh


echo "🏝 Installing Brewfile..."
if [ ! -f /usr/local/bin/brew ] ||  [ ! -f /opt/homebrew/bin/brew ] ; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  if [ $(uname -m) = "arm64" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
fi
brew update
brew upgrade
brew tap homebrew/cask-fonts
brew bundle -v --file=./Brewfile


echo " 🏝 Installing rbenv..."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo ~/.rbenv/plugins/ruby-build/install.sh

echo " 🏝 Installing goenv..."
git clone https://github.com/syndbg/goenv.git ~/.goenv

echo " 🏝 Installing nodenv..."
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
sudo ~/.nodenv/plugins/node-build/install.sh

echo " 🏝 Installing jenv..."
git clone https://github.com/jenv/jenv.git ~/.jenv

echo " 🏝 Installing pyenv..."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv


echo " 🏝 Replacing NeoVim with AstroNvim..."
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim


echo " 🏝 Writeing defaults for macOS..."
# Ref. https://macos-defaults.com/
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "autohide-delay" -float "0"
defaults write com.apple.dock "autohide-time-modifier" -float "1.0"
defaults write com.apple.dock "expose-group-apps" -bool "false"
defaults write com.apple.dock "mineffect" -string "genie"
defaults write com.apple.dock "mru-spaces" -bool "false"
defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.dock "scroll-to-open" -bool "true"
defaults write com.apple.dock "show-recents" -bool "true"
defaults write com.apple.dock "springboard-columns" -int 8
defaults write com.apple.dock "springboard-rows" -int 6
defaults write com.apple.dock "tilesize" -int "36"
defaults write com.apple.dock "static-only" -bool "false"
# dockを空配列で初期化
defaults write com.apple.dock "persistent-apps" -array

defaults write com.apple.controlcenter "NSStatusItem Preferred Position BentoBox" -int "157"
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Sound" -int "191"
defaults write com.apple.controlcenter "NSStatusItem Preferred Position WiFi" -int "229"
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Display" -int "307"
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Battery" -int "335"
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -int "1"
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible AirDrop" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible FocusModes" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible StageManager" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible ScreenMirroring" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible Display" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -int "1"
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -int "1"
defaults write com.apple.controlcenter "NSStatusItem Visible BentoBox" -int "1"
defaults write com.apple.controlcenter "NSStatusItem Visible AudioVideoModule" -int "0"
defaults write com.apple.controlcenter "NSStatusItem Visible Clock" -int "1"

defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "CreateDesktop" -bool "true"
defaults write com.apple.finder "FXArrangeGroupViewBy" -string "Name"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCev"
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
defaults write com.apple.finder "FXPreferredGroupBy" -string "Name"
defaults write com.apple.finder "FXPreferredViewStyle" -string "icnv"
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "false"
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "true"
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "false"
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "false"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true"
defaults write com.apple.finder "QuitMenuItem" -bool "true"

defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "false"
defaults write com.apple.menuextra.clock "IsAnalog" -bool "false"
defaults write com.apple.menuextra.clock "ShowAMPM" -bool "true"
defaults write com.apple.menuextra.clock "ShowDate" -bool "true"
defaults write com.apple.menuextra.clock "ShowDayOfWeek" -bool "true"
defaults write com.apple.menuextra.clock "ShowSeconds" -bool "true"

defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "1"
defaults write com.apple.AppleMultitouchTrackpad "DragLock" -bool "false"
defaults write com.apple.AppleMultitouchTrackpad "Dragging" -bool "false"
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "false"

defaults write com.apple.screencapture "disable-shadow" -bool "false"
defaults write com.apple.screencapture "include-date" -bool "true"
defaults write com.apple.screencapture "location" -string "~/Desktop"
defaults write com.apple.screencapture "show-thumbnail" -bool "false"
defaults write com.apple.screencapture "type" -string "png"

defaults write com.apple.spaces "spans-displays" -bool "false"
defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "true"
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"
defaults write com.apple.TextEdit "RichText" -bool "false"
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "false"
defaults write com.apple.CrashReporter "DialogType" -string "none"

# Warp
defaults write dev.warp.Warp-Stable "ActivationHotkeyEnabled" -bool "false"
defaults write dev.warp.Warp-Stable "AliasExpansionBannerSeen" -bool "true"
defaults write dev.warp.Warp-Stable "AliasExpansionEnabled" -bool "false"
defaults write dev.warp.Warp-Stable "AutocompleteSymbols" -bool "true"
defaults write dev.warp.Warp-Stable "CommandCorrections" -bool "true"
defaults write dev.warp.Warp-Stable "CompletionsOpenWhileTyping" -bool "false"
defaults write dev.warp.Warp-Stable "CopyOnSelect" -bool "false"
defaults write dev.warp.Warp-Stable "CrashReportingEnabled" -bool "false"
defaults write dev.warp.Warp-Stable "DismissedWarpAIWarmWelcome" -bool "true"
defaults write dev.warp.Warp-Stable "EnableSSHWrapper" -bool "true"
defaults write dev.warp.Warp-Stable "EnableXRayHover" -bool "true"
defaults write dev.warp.Warp-Stable "ErrorUnderliningEnabled" -bool "true"
defaults write dev.warp.Warp-Stable "FocusReportingEnabled" -bool "false"
defaults write dev.warp.Warp-Stable "FontName" -string "\\"Cica\\""
defaults write dev.warp.Warp-Stable "FontSize" -float "17.0"
defaults write dev.warp.Warp-Stable "HonorPS1" -bool "true"
defaults write dev.warp.Warp-Stable "InputMode" -string "\\"PinnedToBottom\\""
defaults write dev.warp.Warp-Stable "LineHeightRatio" -float "1.2"
defaults write dev.warp.Warp-Stable "LinkTooltip" -bool "false"
defaults write dev.warp.Warp-Stable "MouseReportingEnabled" -bool "false"
defaults write dev.warp.Warp-Stable "OpenFileEditor" -string "\\"VSCode\\""
defaults write dev.warp.Warp-Stable "OverrideBlur" -int "1"
defaults write dev.warp.Warp-Stable "OverrideOpacity" -int "70"
defaults write dev.warp.Warp-Stable "QuakeModeEnabled" -bool "false"
defaults write dev.warp.Warp-Stable "RestoreSession" -bool "true"
defaults write dev.warp.Warp-Stable "ShouldDimInactivePanes" -bool "true"
defaults write dev.warp.Warp-Stable "ShowHintText" -bool "false"
defaults write dev.warp.Warp-Stable "ShowIndicatorsButton" -bool "true"
defaults write dev.warp.Warp-Stable "ShowJumpToBottomOfBlockButton" -bool "true"
defaults write dev.warp.Warp-Stable "ShowWarningBeforeQuitting" -bool "false"
defaults write dev.warp.Warp-Stable "SmartSelect" -bool "true"
defaults write dev.warp.Warp-Stable "SnackbarEnabled" -bool "true"
defaults write dev.warp.Warp-Stable "SyntaxHighlighting" -bool "true"
defaults write dev.warp.Warp-Stable "SyntaxHighlighting" -bool "true"
defaults write dev.warp.Warp-Stable "UseAudibleBell" -bool "false"
defaults write dev.warp.Warp-Stable "UseThinStrokes" -string "\\"OnLowDpiDisplays\\""
defaults write dev.warp.Warp-Stable "VimModeEnabled" -bool "false"
defaults write dev.warp.Warp-Stable "WelcomeTipsCompleted" -bool "true"

# ターミナルアプリにFullDiskAccess権限が必要
echo ""
echo "⚠️ This command requires to grant full disk access to the terminal (System Preferences → Security & Privacy → Full Disk Access)"
echo "  defaults write com.apple.universalaccess \"showWindowTitlebarIcons\" -bool \"false\""
echo ""

defaults write NSGlobalDomain "AppleActionOnDoubleClick" -string "Minimize"
defaults write NSGlobalDomain "AppleMenuBarVisibleInFullscreen" -bool "true"
defaults write NSGlobalDomain "AppleMiniaturizeOnDoubleClick" -bool "false"
defaults write NSGlobalDomain "AppleScrollerPagingBehavior" -bool "true"
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write NSGlobalDomain "AppleShowScrollBars" -string "WhenScrolling"
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "false"
defaults write NSGlobalDomain "InitialKeyRepeat" -int "15"
defaults write NSGlobalDomain "KeyRepeat" -int "2"
defaults write NSGlobalDomain "NSAutomaticCapitalizationEnabled" -bool "false"
defaults write NSGlobalDomain "NSAutomaticPeriodSubstitutionEnabled" -bool "false"
defaults write NSGlobalDomain "NSCloseAlwaysConfirmsChanges" -bool "true"
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2"
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool "true"
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"
defaults write NSGlobalDomain com.apple.mouse.scaling -float "0.875"
defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool "true"
defaults write NSGlobalDomain com.apple.trackpad.scaling -float "0.875"

killall Dock
killall Finder
killall SystemUIServer

echo " 🏝 source ~/.zshrc"
source ~/.zshrc
