# Fetch variables
source vars

osascript <<EOD


tell application "Calendar" to delete calendar "$CALNAME"
end tell
EOD