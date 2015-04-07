with timeout of (30 * 60) seconds
	tell application "Evernote"
		set backupFolder to "/Users/vitopn/Documents/BK/"
		set allNotebooks to every notebook
		repeat with currentNoteBook in allNotebooks
			set notebookName to (the name of currentNoteBook)
			log notebookName
			set allNotes to every note in notebook notebookName
			if (count of allNotes) > 0 then
				set exportFilename to (backupFolder & notebookName & ".enex")
				log exportFilename
				log (count of allNotes)
				export allNotes to exportFilename with tags
			end if
		end repeat
	end tell
end timeout