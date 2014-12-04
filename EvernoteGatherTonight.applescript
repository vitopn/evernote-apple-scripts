tell application "Evernote"
	my move_to_today(find notes "tag:_tonight")
	my move_to_today(find notes "tag:_tomorrow_night")
end tell


on move_to_today(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			set today_tag to tag named "_today"
			assign today_tag to matches
		end if
	end tell
end move_to_today
