tell application "Evernote"
	
	my move_to_today(notes of notebook "inbox")
	my set_reminder(notes of notebook "inbox")
	my move_to_todo(notes of notebook "inbox")
	
end tell

on set_reminder(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			repeat with theNote in matches
				set the reminder order of theNote to current date
			end repeat
		end if
	end tell
end set_reminder

on move_to_today(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			set today_tag to tag named "_today"
			assign today_tag to matches
		end if
	end tell
end move_to_today

on move_to_todo(matches)
	tell application "Evernote"
		if ((count of matches) > 0) then
			repeat with match in matches
				move match to notebook "ToDo"
			end repeat
		end if
	end tell
end move_to_todo

