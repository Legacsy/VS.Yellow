function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'customnotes/bullet_notes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.6); --Change amount of health to take when you miss like a fucking moron
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

dodgeAnimations = {'dodgeLEFT', 'dodgeDOWN', 'dodgeUP', 'dodgeRIGHT'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if isSustainNote==false then
		if noteType == 'Bullet Note' then
			triggerEvent('Play Animation','dodge','BF')

			triggerEvent('Play Animation','gunshot','Dad')

			triggerEvent('Screen Shake','0.175, 0.0085','0, 0')


		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if isSustainNote==false then
		if noteType == 'Bullet Note' then
			--Sounds
			playSound('bfhit', 0.8)
			-- bf anim
				triggerEvent('Play Animation','hurt','BF')

			-- dad anim
			triggerEvent('Play Animation','gunshot','Dad')

			triggerEvent('Screen Shake','0.175, 0.0085','0, 0')

			setProperty('health', getProperty('health') - 0.25);
		end
	end
end