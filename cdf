#!/usr/bin/osascript

try
	tell application "Finder" to set dir to (POSIX path of (target of front window as text))
on error
	set dir to "$HOME/Desktop"
end try

tell application "Terminal" to do script "cd \"" & dir & "\"" in front window
return