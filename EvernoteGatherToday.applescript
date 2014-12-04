tell application "Evernote"
	my move_to_today(notes of notebook "inbox")
	my move_to_todo(notes of notebook "inbox")
end tell

tell application "Evernote"
	my move_to_today(find notes "tag:_tomorrow")
end tell

tell application "Evernote"
	set day_of_week to weekday of (current date)
	if day_of_week is Monday then
		my move_to_today(find notes "tag:_nextWeek")
	else if day_of_week is Tuesday then
		my move_to_today(find notes "tag:_tuesday")
	else if day_of_week is Wednesday then
		my move_to_today(find notes "tag:_wednesday")
	else if day_of_week is Thursday then
		my move_to_today(find notes "tag:_thursday")
	else if day_of_week is Friday then
		my move_to_today(find notes "tag:_friday")
	else if day_of_week is Saturday then
		my move_to_today(find notes "tag:_nextWeekend")
	else if day_of_week is Sunday then
		my move_to_today(find notes "tag:_sunday")
	end if
end tell

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

