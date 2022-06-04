function onCreate()
    makeLuaSprite('screen', 'explosionDeath', 0, 0);
    setLuaSpriteScrollFactor('screen', 1, 1);

end
function onGameOver()
    -- You died! Called every single frame your health is lower (or equal to) zero
    -- return Function_Stop if you want to stop the player from going into the game over screen
playSound('bfhit', 1)
triggerEvent('Screen Shake','0.175, 0.01','0, 0')
triggerEvent('Add Camera Zoom','0.01','0.02')

    return Function_Continue;
end
function onGameOverConfirm(retry)
    -- Called when you Press Enter/Esc on Game Over
    -- If you've pressed Esc, value "retry" will be false
if retry==true then
    playSound('confirmMenu', 1)
end

if retry==false then
    playsound('cancelMenu', 1)
end
end