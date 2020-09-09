#!/bin/sh
/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticallyInstallMacOSUpdates
/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticallyInstallMacOSUpdates -bool true
/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticallyInstallMacOSUpdates

/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled
/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled -bool true
/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled

/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload
/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload -bool true
/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload

/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall
/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall -bool true
/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall

/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist ConfigDataInstall
/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist ConfigDataInstall -bool true
/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist ConfigDataInstall

/usr/bin/defaults read /Library/Preferences/com.apple.commerce.plist AutoUpdate
/usr/bin/defaults write /Library/Preferences/com.apple.commerce.plist AutoUpdate -bool true
/usr/bin/defaults read /Library/Preferences/com.apple.commerce.plist AutoUpdate