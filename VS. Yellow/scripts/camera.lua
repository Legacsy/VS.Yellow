function onMoveCamera(focus)
    if focus == 'boyfriend' then
        -- called when the camera focus on boyfriend
            setProperty('defaultCamZoom',0.45)
    elseif focus == 'dad' then
        -- called when the camera focus on dad
            setProperty('defaultCamZoom',0.5)
    end
end