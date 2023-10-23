#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Reverse Scroll Direction
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ↕️

# Documentation:
# @raycast.author Matt Radbourne
# @raycast.authorURL https://github.com/mradbourne

do shell script "open x-apple.systempreferences:com.apple.Trackpad-Settings.extension"
tell application "System Events"
	tell application process "System Settings"
		repeat until (exists window "Trackpad")
			delay 0.1
		end repeat
		tell window "Trackpad"
			click radio button 2 of tab group 1 of group 1 of list 2 of splitter group 1 of list 1
			click checkbox 1 of group 1 of scroll area 1 of group 1 of list 2 of splitter group 1 of list 1
		end tell
		tell application "System Settings" to quit
	end tell
end tell
