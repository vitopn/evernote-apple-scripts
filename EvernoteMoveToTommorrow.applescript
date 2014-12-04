tell application "Evernote"
	set todays to find notes "tag:_today"
	my tag_for_tommorrow(todays)
	my clear_today_tag(todays)
end tell

on clear_today_tag(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			repeat with match in matches
				set today_tag to tag named "_today"
				unassign today_tag from match
			end repeat
		end if
	end tell
end clear_today_tag

on tag_for_tommorrow(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			set tomorrow_tag to tag named "_tomorrow"
			repeat with match in matches
				assign tomorrow_tag to match
			end repeat
		end if
	end tell
end tag_for_tommorrow
