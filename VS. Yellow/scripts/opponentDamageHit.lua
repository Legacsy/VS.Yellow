function opponentNoteHit(id, direction, noteType, isSustainNote)
    setProperty('health', getProperty('health') - 0.025);

    if getProperty('health')<=0.01 then
        setProperty('health', 0.01)
    end
end