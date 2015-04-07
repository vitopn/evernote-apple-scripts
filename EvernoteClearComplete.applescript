tell application "Evernote"
	set todays_done to find notes "notebook:\"DONE\" tag:\"_today\""
	log (count of todays_done)
	my clear_all_tags(todays_done)
	my tag_as_complete(todays_done)
end tell

on clear_all_tags(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			repeat with match in matches
				set noteTags to tags in match
				unassign noteTags from match
			end repeat
		end if
	end tell
end clear_all_tags

on tag_as_complete(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			set complete_tag to tag named "COMPLETE"
			repeat with match in matches
				assign complete_tag to match
			end repeat
		end if
	end tell
end tag_as_complete
