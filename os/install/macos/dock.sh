#!/usr/bin/env zsh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Atom.app"
dockutil --no-restart --add "/Applications/iTerm.app"
#dockutil --no-restart --add "/Applications/Android Studio.app"
#dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/System Preferences.app"

killall Dock
